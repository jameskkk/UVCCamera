namespace CSharpVFWWebcam
{
    partial class FormMain
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
            this.webCam1 = new MyWebcam.WebCam();
            this.SuspendLayout();
            // 
            // webCam1
            // 
            this.webCam1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.webCam1.Location = new System.Drawing.Point(13, 13);
            this.webCam1.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.webCam1.Name = "webCam1";
            this.webCam1.Size = new System.Drawing.Size(572, 387);
            this.webCam1.TabIndex = 0;
            // 
            // FormMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(598, 413);
            this.Controls.Add(this.webCam1);
            this.Name = "FormMain";
            this.Text = "CSharpVFWWebcam";
            this.ResumeLayout(false);

        }

        #endregion

        private MyWebcam.WebCam webCam1;
    }
}

