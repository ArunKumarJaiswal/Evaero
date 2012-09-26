using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace DC.BusinessHelper
{
    public static class CommonClass
    {
        /// <summary>
        /// <Author>Kamal Pratap Singh</Author>
        /// <CreatedOn>14-06-2012</CreatedOn>
        /// <Description>This method is used for clear all controls </Description>    
        /// </summary>
        public static void ClearPage(Control control)
        {
            try
            {
                for (Int32 i = 1; i < control.Controls.Count; i++)
                {
                    if (control.Controls[i].GetType().Name == "TextBox")
                    {
                        TextBox t = (TextBox)control.Controls[i];
                        t.Text = string.Empty;
                    }
                    if (control.Controls[i].GetType().Name == "DropDownList")
                    {
                        DropDownList dropDown = (DropDownList)control.Controls[i];
                        if (dropDown.SelectedIndex != -1)
                            dropDown.SelectedIndex = 0;
                    }
                    if (control.Controls[i].ID == "DivMessage")
                    {
                        Label label = (Label)control.Controls[i].FindControl("LabelMessage");
                        label.Text = string.Empty;
                    }
                    if (control.Controls[i].GetType().Name == "GridView")
                    {
                        GridView GView = (GridView)control.Controls[i];
                        GView.SelectedIndex = -1;
                    }
                    if (control.Controls[i].GetType().Name == "Panel")
                    {
                        for (Int32 j = 1; j < control.Controls[i].Controls.Count; j++)
                        {
                            if (control.Controls[i].Controls[j].GetType().Name == "TextBox")
                            {
                                TextBox t = (TextBox)control.Controls[i].Controls[j];
                                t.Text = string.Empty;
                            }
                            if (control.Controls[i].Controls[j].GetType().Name == "DropDownList")
                            {
                                DropDownList dropDown = (DropDownList)control.Controls[i].Controls[j];
                                if (dropDown.SelectedIndex != -1)
                                    dropDown.SelectedIndex = 0;
                            }
                            if (control.Controls[i].Controls[j].ID == "DivMessage")
                            {
                                Label label = (Label)control.Controls[i].Controls[j].FindControl("LabelMessage");
                                label.Text = string.Empty;
                            }
                            if (control.Controls[i].Controls[j].GetType().Name == "GridView")
                            {
                                GridView GView = (GridView)control.Controls[i].Controls[j];
                                GView.SelectedIndex = -1;
                            }
                        }
                    }
                    if (control.Controls[i].GetType().Name == "ContentPlaceHolder")
                    {
                        for (Int32 j = 1; j < control.Controls[i].Controls.Count; j++)
                        {
                            if (control.Controls[i].Controls[j].GetType().Name == "TextBox")
                            {
                                TextBox t = (TextBox)control.Controls[i].Controls[j];
                                t.Text = string.Empty;
                            }
                            if (control.Controls[i].Controls[j].GetType().Name == "DropDownList")
                            {
                                DropDownList dropDown = (DropDownList)control.Controls[i].Controls[j];
                                if (dropDown.SelectedIndex != -1)
                                    dropDown.SelectedIndex = 0;
                            }
                            if (control.Controls[i].Controls[j].ID == "DivMessage")
                            {
                                Label label = (Label)control.Controls[i].Controls[j].FindControl("LabelMessage");
                                label.Text = string.Empty;
                            }
                            if (control.Controls[i].Controls[j].GetType().Name == "GridView")
                            {
                                GridView GView = (GridView)control.Controls[i].Controls[j];
                                GView.SelectedIndex = -1;
                            }
                        }
                    }

                }
            }
            catch
            {
                throw (new Exception("Controls was not found..."));
            }
            finally
            {

            }
        }
        /// <summary>
        /// <Author>Kamal Pratap Singh</Author>
        /// <CreatedOn>14-06-2012</CreatedOn>
        /// <Description>This method is used for fill grid view </Description>    
        /// </summary>
        public static void FillGridView(System.Web.UI.WebControls.GridView objectGridView, Object objectSourceTable)
        {
            objectGridView.DataSource = objectSourceTable;
            objectGridView.DataBind();
        }

        public static DateTime CurrentTime()
        {
            return DateTime.Now;
        }
    }
}
