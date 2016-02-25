<%@ page import="edu.ucla.cs.cs144.ItemServlet" %>
<html>
<head>	
</head>
<%xmlObject xobj = request.getAttribute("xobj");%>
<body>
	<h1> Item Search Page </h1>
	<p>ItemID : <%= xobj.ItemID;%> </p>
	<p>ItemName : <%= xobj.Name%> </p>
	<p>Current Price : <%= xobj.Currently%></p>
	<p>First Bid Price : <%= xobj.First_Bid%></p>
	<p>Number of Bids : <%= xobj.Number_of_Bids%></p>
	<p>Location : <%= xobj.Location%></p>
	<p>Latitude : <%= xobj.Latitude%></p>
	<p>Longitude : <%= xobj.Longitude%></p>
	<p>Start Time : <%= xobj.Started%></p>
	<p>End Time : <%= xobj.Ends%></p>
	<p>Seller Rating : <%= xobj.SellerRating%></p>
	<p>Seller ID : <%= xobj.SellerID%></p>
	<p>Categories : 
	<%
		for(int i=0; i<xobj.Categories.length; i++){
			%><%= xobj.Categories[i] + ", ";%><%
		}
	%>
	</p>
	<table border="1">
	<tr>
	<th>BidderID</th>
	<th>BidderRating</th>
	<th>Location</th>
	<th>Country</th>
	<th>Time</th>
	<th>Amount</th>
	</tr>
	<%
		if(xobj.bids != null){
			for(int j=0; j<xobj.bids.length; j++){
				xmlObj.Bid bid = xobj.bids[j];%>
				<tr>
				<td><%= bid.BidderID%></td>
				<td><%= bid.BidderRating%></td>
				<td><%= bid.BidLocation%></td>
				<td><%= bid.BidCountry%></td>
				<td><%= bid.Time%></td>
				<td><%= bid.Amount%></td>
				</tr>
			<%}
		}
	%>
	</table>

</body>
</html>