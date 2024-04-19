using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using System.Data;

namespace TourDemo.Module
{
	public class BackupService
	{
		private readonly string _connectionString;
		private readonly string _backupFolderFullPath;

		public BackupService(string connectionString, string backupFolderFullPath)
		{
			_connectionString = connectionString;
			_backupFolderFullPath = backupFolderFullPath;
		}

		public void BackupDatabase(string databaseName)
		{
			string filePath = BuildBackupPathWithFilename(databaseName);

			using (var connection = new SqlConnection(_connectionString))
			{
				var query = String.Format("BACKUP DATABASE [{0}] TO DISK='{1}'", databaseName, filePath);

				using (var command = new SqlCommand(query, connection))
				{
					connection.Open();
					command.ExecuteNonQuery();
				}
			}
		}

		public void Restore(string databaseName, string filePath2)
		{
			using (var connection = new SqlConnection(_connectionString))
			{
				var query = String.Format("USE master ALTER DATABASE [{0}] SET SINGLE_USER WITH ROLLBACK IMMEDIATE " +
					"RESTORE DATABASE [{0}] FROM DISK='{1}' WITH REPLACE", databaseName, _backupFolderFullPath + filePath2);

				using (var command = new SqlCommand(query, connection))
				{
					connection.Open();
					command.ExecuteNonQuery();
				}
			}
		}

		private string BuildBackupPathWithFilename(string databaseName)
		{
			string filename = string.Format("{0}-{1}.bak", databaseName, DateTime.Now.ToString("dd-MM-yyyy hh mm ss"));

			return Path.Combine(_backupFolderFullPath, filename);
		}
	}
}
