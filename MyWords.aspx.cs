using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Models;

namespace WebApplication1
{
    public partial class MyWords : System.Web.UI.Page
    {
        Words words = new Words();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) ;
        }

        protected void Search_Click(object sender, EventArgs e)
        {

            var myWords = words.GetAllWords();

            if (myWords.ContainsKey(searchBox.Text.ToString()))
            {
                SWord.Text = searchBox.Text;
                STran.Text = myWords[searchBox.Text.ToString()];
            }
        }

        
        protected void AddSave_Click1(object sender, EventArgs e)
        {

            words.AddWord(AWord.Text.ToString(), ATran.Text.ToString());
        }
    }
}