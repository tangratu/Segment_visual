using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
class Segment
{
	public int start;
	public int end;
	public int l;
	Segment() 
	{
		start = 0;
		end = 0;
		l = 0;
	}
	public Segment(int s, int e)
	{
		if (s < e) { start = s; end = e;l = e - s; }
		else
		{
			start = e;
			end = s;
			l = s - e;
		}
	}
	public int getoverlap(int st, int en)
	{
		int s, e;
		if (st < en) { s = st; e = en; }
		else { s = en; e = st; }
		if (start < s)
		{
			if (end > s) return end - s;
			return 0;
		}
		if (start > s)
		{
			if (e > start) return e - start;
			return 0;
		}
		return 0;
	}
};
namespace Segment_visual
{
    public partial class Line : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
		
        }

        protected void Bt_pnt_Click(object sender, EventArgs e)
        {
			
			
			int n, a, b, c;
			n = int.Parse(Tb_N.Text);
			a = int.Parse(Tb_A.Text);
			b = int.Parse(Tb_B.Text);
			c = int.Parse(Tb_C.Text);
			Tb_Line.Rows[0].Cells.Clear();
			List<Segment> pairs = new List<Segment>();
			
			for (int i = 0; i <= n; i += a)
			{
				for (int z = n; z >= 0; z -= b)
				{
					pairs.Add(new Segment(i, z));
				}
			}
            for (int i = 0; i < n; i++)
            {
				TableCell t = new TableCell();
				
				t.Width = 7;
				t.BackColor = Color.Black;
				t.BorderColor = Color.Black;
				Tb_Line.Rows[0].Cells.Add(t);
            }
			foreach (TableCell t in Tb_Line.Rows[0].Cells)
            {
				t.BackColor = Color.Black;
				t.BorderColor = Color.Black;
			}
			foreach (Segment item in pairs)
            {
				if(item.l == c)
                {
                    for (int i = item.start; i < item.end; i++)
                    {
						if (Tb_Line.Rows[0].Cells[i].BackColor != Color.Red)
						{
							Tb_Line.Rows[0].Cells[i].BackColor = Color.Red;
							Tb_Line.Rows[0].Cells[i].BorderColor = Color.Red;
						}
					}
                }
            }
			
			
		}
    }
}