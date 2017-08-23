<%@ Page language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html  >
  <head id="Head1" runat="server">
    <title>Example</title>
</head>
<body>
    <form id="form1" runat="server">

      <h3>GridView Example</h3>

      <asp:gridview id="DemoGridView" 
        datasourceid="CustomersSource" 
        autogeneratecolumns="False"
        emptydatatext="No data available." 
        allowpaging="True" 
        runat="server" DataKeyNames="id">
          <Columns>
              <asp:BoundField DataField="id" HeaderText="id" 
                  InsertVisible="False" ReadOnly="True" SortExpression="id" />
              <asp:BoundField DataField="name" HeaderText="Name" 
                  SortExpression="name" />
              <asp:BoundField DataField="age" HeaderText="Age" 
                  SortExpression="age" />
          </Columns>
      </asp:gridview>

      <!-- This example uses Microsoft SQL Server and connects  -->
      <!-- to the Northwind sample database. Use an ASP.NET     -->
      <!-- expression to retrieve the connection string value   -->
      <!-- from the Web.config file.                            -->
      <asp:sqldatasource id="CustomersSource"
        selectcommand="SELECT * FROM devopsdemo"
        connectionstring="<%$ ConnectionStrings:AWLTConnectionString %>" 
        runat="server"/>

    </form>
  </body>
</html>
