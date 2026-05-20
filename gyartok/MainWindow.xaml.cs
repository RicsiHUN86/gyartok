using MySqlConnector;
using System;
using System.Data;
using System.Windows;
using System.Windows.Controls;

namespace gyartok
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            LoadData();
        }

        public string connectionString =
            "server=localhost;user=root;password=;database=vizsga_2025;";

        public void LoadData()
        {
            using (var conn = new MySqlConnection(connectionString))
            {
                conn.Open();

                string sql = "SELECT * FROM gyartok";

                var cmd = new MySqlCommand(sql, conn);

                var adapter = new MySqlDataAdapter(cmd);

                var dt = new DataTable();

                adapter.Fill(dt);

                dataGrid1.ItemsSource = dt.DefaultView;
            }
        }

        
        private void button1_Click(object sender, RoutedEventArgs e)
        {
            var row = dataGrid1.SelectedItem as DataRowView;

            using (var conn = new MySqlConnection(connectionString))
            {
                conn.Open();

                string sql = @"SELECT COUNT(*) FROM szerszamok WHERE gyarto = @gyarto";

                var cmd = new MySqlCommand(sql, conn);

                cmd.Parameters.AddWithValue("@gyarto", row["gyarto"]);

                MessageBox.Show(
                    "Szerszamok szama: " + cmd.ExecuteScalar().ToString()
                );
            }
        }

        
        private void button2_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        
        private void button3_Click(object sender, RoutedEventArgs e)
        {
            using (var conn = new MySqlConnection(connectionString))
            {
                conn.Open();

                string sql = @"SELECT gyarto FROM gyartok ORDER BY leanyvallalatok DESC LIMIT 1";

                var cmd = new MySqlCommand(sql, conn);

                MessageBox.Show(
                    "Legtöbb leányvállalat: " +
                    cmd.ExecuteScalar().ToString()
                );
            }
        }
    }
}