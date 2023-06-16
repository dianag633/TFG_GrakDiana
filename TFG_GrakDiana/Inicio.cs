namespace TFG_GrakDiana
{
    public partial class Inicio : Form
    {
        private Form vistaActiva;

        public Inicio()
        {
            InitializeComponent();            
            verVistaOpcionMenu(new Principal());            
        }

        #region metodos

        //private void ocultarSubMenus()
        //{
        //    if(pnlAyuda.Visible)
        //    {
        //        pnlAyuda.Visible = false;
        //    }
        //}

        private void verSubMenu(Panel subMenu)
        {
            if (!subMenu.Visible)
            {                
                subMenu.Visible = true;
            }
            else
            {
                subMenu.Visible = false;
            }
        }

        private void cambiarVistaOpcionMenu(Form vista)
        {
            if(vistaActiva!=null)
            {
                vistaActiva.Close();
                verVistaOpcionMenu(vista);
            }                                        
        }

        private void verVistaOpcionMenu(Form vista)
        {
            vistaActiva = vista;
            vista.TopLevel = false;
            vista.FormBorderStyle = FormBorderStyle.None;
            vista.Dock = DockStyle.Fill;
            pnlVistaOpcion.Controls.Add(vista);
            pnlVistaOpcion.Tag = vista;
            vista.BringToFront();
            vista.Show();
        }

        #endregion

        #region Eventos
        private void btnPrincipal_Click(object sender, EventArgs e)
        {
            //ocultarSubMenus();
            cambiarVistaOpcionMenu(new Principal());
        }

        private void btnJugar_Click(object sender, EventArgs e)
        {            
            cambiarVistaOpcionMenu(new Jugar());
            //ocultarSubMenus();
        }

        private void btnAyuda_Click(object sender, EventArgs e)
        {
            verSubMenu(pnlAyuda);
        }

        private void btnManual_Click(object sender, EventArgs e)
        {
            //ocultarSubMenus();
            Manual manual = new Manual();
            manual.ShowDialog();
        }

        private void btnInformar_Click(object sender, EventArgs e)
        {
            //ocultarSubMenus();
            cambiarVistaOpcionMenu(new Informar());
        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        #endregion
    }
}