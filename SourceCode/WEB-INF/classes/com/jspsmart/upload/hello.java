// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   hello.java

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class hello extends HttpServlet
{

    public hello()
    {
    }

    public void doGet(HttpServletRequest httpservletrequest, HttpServletResponse httpservletresponse)
        throws ServletException, IOException
    {
        httpservletresponse.setContentType("text/html;charset=gb2312");
        PrintWriter printwriter = httpservletresponse.getWriter();
        printwriter.println("<html><head><title>");
        printwriter.println("servlet\u6D4B\u8BD5!</title></head><body>");
        printwriter.println("hello123!</body></html>");
    }
}
