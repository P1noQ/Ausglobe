<%@ Application Language="C#" %>

<script RunAt="server">

    void Application_Start(object sender, EventArgs e)
    {
        Application.Add("Online", 0);
        Application["SiteVisitedCounter"] = 0;
        Application["OnlineUserCounter"] = 0;
    }
    void Application_End(object sender, EventArgs e)
    {

    }
    void Application_Error(object sender, EventArgs e)
    {
        
    }
    void Session_Start(object sender, EventArgs e)
    {
        Session.Add("Login", "1");
        Application.Lock();
        Application["Online"] = (int)Application["Online"] + 1;
        //Application["SiteVisitedCounter"] = Convert.ToInt32(Application["SiteVisitedCounter"]) + 1;
        //Application["OnlineUserCounter"] = Convert.ToInt32(Application["OnlineUserCounter"]) + 1;
        Application.UnLock();
    }
    void Session_End(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Session.Abandon();
        Application.Lock();
        Application["Online"] = (int)Application["Online"] - 1;
        //Application["SiteVisitedCounter"] = Convert.ToInt32(Application["SiteVisitedCounter"]) - 1;
        //Application["OnlineUserCounter"] = Convert.ToInt32(Application["OnlineUserCounter"]) - 1;
        Application.UnLock();
    }
</script>