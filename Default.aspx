<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
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
        </div>
    </form>
</body>
</html>
