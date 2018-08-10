namespace Student_Management
{
    partial class frmMain
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmMain));
            this.dgvHocSinh = new System.Windows.Forms.DataGridView();
            this.MaSo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.HoTen = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.MaLop = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.cmbKhoi = new System.Windows.Forms.ComboBox();
            this.lblKhoi = new System.Windows.Forms.Label();
            this.lblLop = new System.Windows.Forms.Label();
            this.cmbLop = new System.Windows.Forms.ComboBox();
            this.grbLoc = new System.Windows.Forms.GroupBox();
            ((System.ComponentModel.ISupportInitialize)(this.dgvHocSinh)).BeginInit();
            this.grbLoc.SuspendLayout();
            this.SuspendLayout();
            // 
            // dgvHocSinh
            // 
            this.dgvHocSinh.AllowUserToAddRows = false;
            this.dgvHocSinh.AllowUserToDeleteRows = false;
            this.dgvHocSinh.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.dgvHocSinh.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvHocSinh.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.MaSo,
            this.HoTen,
            this.MaLop});
            this.dgvHocSinh.Location = new System.Drawing.Point(12, 130);
            this.dgvHocSinh.Name = "dgvHocSinh";
            this.dgvHocSinh.ReadOnly = true;
            this.dgvHocSinh.Size = new System.Drawing.Size(868, 280);
            this.dgvHocSinh.TabIndex = 0;
            // 
            // MaSo
            // 
            this.MaSo.DataPropertyName = "MaHocSinh";
            this.MaSo.HeaderText = "Mã số";
            this.MaSo.Name = "MaSo";
            this.MaSo.ReadOnly = true;
            // 
            // HoTen
            // 
            this.HoTen.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.HoTen.DataPropertyName = "HoTen";
            this.HoTen.HeaderText = "Họ tên";
            this.HoTen.Name = "HoTen";
            this.HoTen.ReadOnly = true;
            // 
            // MaLop
            // 
            this.MaLop.DataPropertyName = "MaLop";
            this.MaLop.HeaderText = "Lớp";
            this.MaLop.Name = "MaLop";
            this.MaLop.ReadOnly = true;
            // 
            // cmbKhoi
            // 
            this.cmbKhoi.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbKhoi.FormattingEnabled = true;
            this.cmbKhoi.Items.AddRange(new object[] {
            "Tất cả",
            "10",
            "11",
            "12"});
            this.cmbKhoi.Location = new System.Drawing.Point(54, 29);
            this.cmbKhoi.Name = "cmbKhoi";
            this.cmbKhoi.Size = new System.Drawing.Size(121, 28);
            this.cmbKhoi.TabIndex = 1;
            // 
            // lblKhoi
            // 
            this.lblKhoi.AutoSize = true;
            this.lblKhoi.Location = new System.Drawing.Point(6, 32);
            this.lblKhoi.Name = "lblKhoi";
            this.lblKhoi.Size = new System.Drawing.Size(42, 20);
            this.lblKhoi.TabIndex = 2;
            this.lblKhoi.Text = "Khối";
            // 
            // lblLop
            // 
            this.lblLop.AutoSize = true;
            this.lblLop.Location = new System.Drawing.Point(11, 68);
            this.lblLop.Name = "lblLop";
            this.lblLop.Size = new System.Drawing.Size(37, 20);
            this.lblLop.TabIndex = 3;
            this.lblLop.Text = "Lớp";
            // 
            // cmbLop
            // 
            this.cmbLop.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbLop.FormattingEnabled = true;
            this.cmbLop.Location = new System.Drawing.Point(54, 65);
            this.cmbLop.Name = "cmbLop";
            this.cmbLop.Size = new System.Drawing.Size(121, 28);
            this.cmbLop.TabIndex = 4;
            // 
            // grbLoc
            // 
            this.grbLoc.Controls.Add(this.cmbKhoi);
            this.grbLoc.Controls.Add(this.cmbLop);
            this.grbLoc.Controls.Add(this.lblKhoi);
            this.grbLoc.Controls.Add(this.lblLop);
            this.grbLoc.Location = new System.Drawing.Point(12, 12);
            this.grbLoc.Name = "grbLoc";
            this.grbLoc.Size = new System.Drawing.Size(201, 100);
            this.grbLoc.TabIndex = 5;
            this.grbLoc.TabStop = false;
            this.grbLoc.Text = "Lọc";
            // 
            // frmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(10F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(892, 422);
            this.Controls.Add(this.grbLoc);
            this.Controls.Add(this.dgvHocSinh);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 12.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(5, 5, 5, 5);
            this.Name = "frmMain";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Student Management";
            ((System.ComponentModel.ISupportInitialize)(this.dgvHocSinh)).EndInit();
            this.grbLoc.ResumeLayout(false);
            this.grbLoc.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView dgvHocSinh;
        private System.Windows.Forms.DataGridViewTextBoxColumn MaSo;
        private System.Windows.Forms.DataGridViewTextBoxColumn HoTen;
        private System.Windows.Forms.DataGridViewTextBoxColumn MaLop;
        private System.Windows.Forms.ComboBox cmbKhoi;
        private System.Windows.Forms.Label lblKhoi;
        private System.Windows.Forms.Label lblLop;
        private System.Windows.Forms.ComboBox cmbLop;
        private System.Windows.Forms.GroupBox grbLoc;
    }
}

