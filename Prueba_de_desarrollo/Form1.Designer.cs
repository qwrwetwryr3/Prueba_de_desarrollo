namespace Prueba_de_desarrollo
{
    partial class Form1
    {
        /// <summary>
        /// Variable del diseñador necesaria.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpiar los recursos que se estén usando.
        /// </summary>
        /// <param name="disposing">true si los recursos administrados se deben desechar; false en caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código generado por el Diseñador de Windows Forms

        /// <summary>
        /// Método necesario para admitir el Diseñador. No se puede modificar
        /// el contenido de este método con el editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.Codigo = new System.Windows.Forms.Label();
            this.Descripcion = new System.Windows.Forms.Label();
            this.Fecha_Ingreso = new System.Windows.Forms.Label();
            this.Valor = new System.Windows.Forms.Label();
            this.StockMinimo = new System.Windows.Forms.Label();
            this.Codigo_Bodega = new System.Windows.Forms.Label();
            this.txtCodigo = new System.Windows.Forms.TextBox();
            this.txtDescripcion = new System.Windows.Forms.TextBox();
            this.txtValor = new System.Windows.Forms.TextBox();
            this.txtStockMinimo = new System.Windows.Forms.TextBox();
            this.btnGuardar = new System.Windows.Forms.Button();
            this.btnActualizar = new System.Windows.Forms.Button();
            this.btnEliminar = new System.Windows.Forms.Button();
            this.btnBuscar = new System.Windows.Forms.Button();
            this.btnLimpiar = new System.Windows.Forms.Button();
            this.btnSalir = new System.Windows.Forms.Button();
            this.dateTimeFecha_Ingreso = new System.Windows.Forms.DateTimePicker();
            this.txtCodigo_Bodega = new System.Windows.Forms.TextBox();
            this.primaryGrid = new System.Windows.Forms.DataGridView();
            this.txtBuscar = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.btnRefrescar = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.primaryGrid)).BeginInit();
            this.SuspendLayout();
            // 
            // Codigo
            // 
            this.Codigo.AutoSize = true;
            this.Codigo.Location = new System.Drawing.Point(12, 9);
            this.Codigo.Name = "Codigo";
            this.Codigo.Size = new System.Drawing.Size(59, 20);
            this.Codigo.TabIndex = 0;
            this.Codigo.Text = "Codigo";
            // 
            // Descripcion
            // 
            this.Descripcion.AutoSize = true;
            this.Descripcion.Location = new System.Drawing.Point(19, 227);
            this.Descripcion.Name = "Descripcion";
            this.Descripcion.Size = new System.Drawing.Size(92, 20);
            this.Descripcion.TabIndex = 1;
            this.Descripcion.Text = "Descripcion";
            // 
            // Fecha_Ingreso
            // 
            this.Fecha_Ingreso.AutoSize = true;
            this.Fecha_Ingreso.Location = new System.Drawing.Point(12, 51);
            this.Fecha_Ingreso.Name = "Fecha_Ingreso";
            this.Fecha_Ingreso.Size = new System.Drawing.Size(117, 20);
            this.Fecha_Ingreso.TabIndex = 2;
            this.Fecha_Ingreso.Text = "Fecha_Ingreso";
            // 
            // Valor
            // 
            this.Valor.AutoSize = true;
            this.Valor.Location = new System.Drawing.Point(19, 90);
            this.Valor.Name = "Valor";
            this.Valor.Size = new System.Drawing.Size(46, 20);
            this.Valor.TabIndex = 3;
            this.Valor.Text = "Valor";
            // 
            // StockMinimo
            // 
            this.StockMinimo.AutoSize = true;
            this.StockMinimo.Location = new System.Drawing.Point(19, 136);
            this.StockMinimo.Name = "StockMinimo";
            this.StockMinimo.Size = new System.Drawing.Size(100, 20);
            this.StockMinimo.TabIndex = 4;
            this.StockMinimo.Text = "StockMinimo";
            // 
            // Codigo_Bodega
            // 
            this.Codigo_Bodega.AutoSize = true;
            this.Codigo_Bodega.Location = new System.Drawing.Point(19, 179);
            this.Codigo_Bodega.Name = "Codigo_Bodega";
            this.Codigo_Bodega.Size = new System.Drawing.Size(124, 20);
            this.Codigo_Bodega.TabIndex = 5;
            this.Codigo_Bodega.Text = "Codigo_Bodega";
            // 
            // txtCodigo
            // 
            this.txtCodigo.Enabled = false;
            this.txtCodigo.Location = new System.Drawing.Point(71, 9);
            this.txtCodigo.Name = "txtCodigo";
            this.txtCodigo.Size = new System.Drawing.Size(100, 26);
            this.txtCodigo.TabIndex = 6;
            // 
            // txtDescripcion
            // 
            this.txtDescripcion.Location = new System.Drawing.Point(117, 227);
            this.txtDescripcion.Multiline = true;
            this.txtDescripcion.Name = "txtDescripcion";
            this.txtDescripcion.Size = new System.Drawing.Size(325, 91);
            this.txtDescripcion.TabIndex = 7;
            // 
            // txtValor
            // 
            this.txtValor.Location = new System.Drawing.Point(71, 90);
            this.txtValor.Name = "txtValor";
            this.txtValor.ShortcutsEnabled = false;
            this.txtValor.Size = new System.Drawing.Size(100, 26);
            this.txtValor.TabIndex = 9;
            this.txtValor.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtValor_KeyPress);
            // 
            // txtStockMinimo
            // 
            this.txtStockMinimo.Location = new System.Drawing.Point(125, 136);
            this.txtStockMinimo.Name = "txtStockMinimo";
            this.txtStockMinimo.ShortcutsEnabled = false;
            this.txtStockMinimo.Size = new System.Drawing.Size(100, 26);
            this.txtStockMinimo.TabIndex = 10;
            this.txtStockMinimo.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtStockMinimo_KeyPress);
            // 
            // btnGuardar
            // 
            this.btnGuardar.Location = new System.Drawing.Point(16, 350);
            this.btnGuardar.Name = "btnGuardar";
            this.btnGuardar.Size = new System.Drawing.Size(85, 37);
            this.btnGuardar.TabIndex = 12;
            this.btnGuardar.Text = "Guardar";
            this.btnGuardar.UseVisualStyleBackColor = true;
            this.btnGuardar.Click += new System.EventHandler(this.btnGuardar_Click);
            // 
            // btnActualizar
            // 
            this.btnActualizar.Location = new System.Drawing.Point(117, 350);
            this.btnActualizar.Name = "btnActualizar";
            this.btnActualizar.Size = new System.Drawing.Size(91, 37);
            this.btnActualizar.TabIndex = 13;
            this.btnActualizar.Text = "Actualizar";
            this.btnActualizar.UseVisualStyleBackColor = true;
            this.btnActualizar.Click += new System.EventHandler(this.btnActualizar_Click);
            // 
            // btnEliminar
            // 
            this.btnEliminar.Location = new System.Drawing.Point(229, 350);
            this.btnEliminar.Name = "btnEliminar";
            this.btnEliminar.Size = new System.Drawing.Size(87, 38);
            this.btnEliminar.TabIndex = 14;
            this.btnEliminar.Text = "Eliminar";
            this.btnEliminar.UseVisualStyleBackColor = true;
            this.btnEliminar.Click += new System.EventHandler(this.btnEliminar_Click);
            // 
            // btnBuscar
            // 
            this.btnBuscar.Location = new System.Drawing.Point(234, 404);
            this.btnBuscar.Name = "btnBuscar";
            this.btnBuscar.Size = new System.Drawing.Size(87, 37);
            this.btnBuscar.TabIndex = 15;
            this.btnBuscar.Text = "Buscar";
            this.btnBuscar.UseVisualStyleBackColor = true;
            this.btnBuscar.Click += new System.EventHandler(this.btnBuscar_Click);
            // 
            // btnLimpiar
            // 
            this.btnLimpiar.Location = new System.Drawing.Point(12, 487);
            this.btnLimpiar.Name = "btnLimpiar";
            this.btnLimpiar.Size = new System.Drawing.Size(88, 37);
            this.btnLimpiar.TabIndex = 16;
            this.btnLimpiar.Text = "Limpiar";
            this.btnLimpiar.UseVisualStyleBackColor = true;
            this.btnLimpiar.Click += new System.EventHandler(this.btnLimpiar_Click);
            // 
            // btnSalir
            // 
            this.btnSalir.Location = new System.Drawing.Point(113, 487);
            this.btnSalir.Name = "btnSalir";
            this.btnSalir.Size = new System.Drawing.Size(86, 38);
            this.btnSalir.TabIndex = 17;
            this.btnSalir.Text = "Salir";
            this.btnSalir.UseVisualStyleBackColor = true;
            this.btnSalir.Click += new System.EventHandler(this.btnSalir_Click);
            // 
            // dateTimeFecha_Ingreso
            // 
            this.dateTimeFecha_Ingreso.Location = new System.Drawing.Point(135, 51);
            this.dateTimeFecha_Ingreso.Name = "dateTimeFecha_Ingreso";
            this.dateTimeFecha_Ingreso.Size = new System.Drawing.Size(319, 26);
            this.dateTimeFecha_Ingreso.TabIndex = 18;
            // 
            // txtCodigo_Bodega
            // 
            this.txtCodigo_Bodega.Location = new System.Drawing.Point(149, 179);
            this.txtCodigo_Bodega.Name = "txtCodigo_Bodega";
            this.txtCodigo_Bodega.ShortcutsEnabled = false;
            this.txtCodigo_Bodega.Size = new System.Drawing.Size(100, 26);
            this.txtCodigo_Bodega.TabIndex = 19;
            this.txtCodigo_Bodega.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtCodigo_Bodega_KeyPress);
            // 
            // primaryGrid
            // 
            this.primaryGrid.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.primaryGrid.Location = new System.Drawing.Point(477, 37);
            this.primaryGrid.Name = "primaryGrid";
            this.primaryGrid.ReadOnly = true;
            this.primaryGrid.RowTemplate.Height = 28;
            this.primaryGrid.Size = new System.Drawing.Size(1039, 477);
            this.primaryGrid.TabIndex = 20;
            this.primaryGrid.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellDoubleClick);
            // 
            // txtBuscar
            // 
            this.txtBuscar.Location = new System.Drawing.Point(142, 409);
            this.txtBuscar.Name = "txtBuscar";
            this.txtBuscar.Size = new System.Drawing.Size(86, 26);
            this.txtBuscar.TabIndex = 21;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(19, 409);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(117, 20);
            this.label1.TabIndex = 22;
            this.label1.Text = "Buscar Codigo:";
            // 
            // btnRefrescar
            // 
            this.btnRefrescar.Location = new System.Drawing.Point(335, 350);
            this.btnRefrescar.Name = "btnRefrescar";
            this.btnRefrescar.Size = new System.Drawing.Size(97, 38);
            this.btnRefrescar.TabIndex = 23;
            this.btnRefrescar.Text = "Refrescar";
            this.btnRefrescar.UseVisualStyleBackColor = true;
            this.btnRefrescar.Click += new System.EventHandler(this.btnRefrescar_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1528, 545);
            this.Controls.Add(this.btnRefrescar);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txtBuscar);
            this.Controls.Add(this.primaryGrid);
            this.Controls.Add(this.txtCodigo_Bodega);
            this.Controls.Add(this.dateTimeFecha_Ingreso);
            this.Controls.Add(this.btnSalir);
            this.Controls.Add(this.btnLimpiar);
            this.Controls.Add(this.btnBuscar);
            this.Controls.Add(this.btnEliminar);
            this.Controls.Add(this.btnActualizar);
            this.Controls.Add(this.btnGuardar);
            this.Controls.Add(this.txtStockMinimo);
            this.Controls.Add(this.txtValor);
            this.Controls.Add(this.txtDescripcion);
            this.Controls.Add(this.txtCodigo);
            this.Controls.Add(this.Codigo_Bodega);
            this.Controls.Add(this.StockMinimo);
            this.Controls.Add(this.Valor);
            this.Controls.Add(this.Fecha_Ingreso);
            this.Controls.Add(this.Descripcion);
            this.Controls.Add(this.Codigo);
            this.Name = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load_1);
            ((System.ComponentModel.ISupportInitialize)(this.primaryGrid)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label Codigo;
        private System.Windows.Forms.Label Descripcion;
        private System.Windows.Forms.Label Fecha_Ingreso;
        private System.Windows.Forms.Label Valor;
        private System.Windows.Forms.Label StockMinimo;
        private System.Windows.Forms.Label Codigo_Bodega;
        private System.Windows.Forms.TextBox txtCodigo;
        private System.Windows.Forms.TextBox txtDescripcion;
        private System.Windows.Forms.TextBox txtValor;
        private System.Windows.Forms.TextBox txtStockMinimo;
        private System.Windows.Forms.Button btnGuardar;
        private System.Windows.Forms.Button btnActualizar;
        private System.Windows.Forms.Button btnEliminar;
        private System.Windows.Forms.Button btnBuscar;
        private System.Windows.Forms.Button btnLimpiar;
        private System.Windows.Forms.Button btnSalir;
        private System.Windows.Forms.DateTimePicker dateTimeFecha_Ingreso;
        private System.Windows.Forms.TextBox txtCodigo_Bodega;
        private System.Windows.Forms.DataGridView primaryGrid;
        private System.Windows.Forms.TextBox txtBuscar;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnRefrescar;
    }
}

