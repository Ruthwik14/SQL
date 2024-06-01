## Digital Music Store SQL Case Study


> Description
>
> To analyze various aspects of the music store's operations, including
> customer preferences, top-selling genres, high-value customers, and
> popular artists and tracks, to inform marketing strategies, inventory
> management decisions, and customer engagement initiatives.

# Q1. Who is the senior most employee based on job title?

SELECT * FROM employee ORDER BY levels DESC LIMIT 1;

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 11%" />
<col style="width: 11%" />
<col style="width: 20%" />
<col style="width: 11%" />
<col style="width: 7%" />
<col style="width: 21%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>employee_id</p>
</blockquote></th>
<th><blockquote>
<p>last_name</p>
</blockquote></th>
<th><blockquote>
<p>first_name</p>
</blockquote></th>
<th><blockquote>
<p>title</p>
</blockquote></th>
<th><blockquote>
<p>reports_to</p>
</blockquote></th>
<th><blockquote>
<p>levels</p>
</blockquote></th>
<th><blockquote>
<p>birthdate</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Adams</p>
</blockquote></td>
<td><blockquote>
<p>Andrew</p>
</blockquote></td>
<td><blockquote>
<p>General Manager</p>
</blockquote></td>
<td><blockquote>
<p>9</p>
</blockquote></td>
<td><blockquote>
<p>L6</p>
</blockquote></td>
<td><blockquote>
<p>18-02-1962 00:00</p>
</blockquote></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 18%" />
<col style="width: 21%" />
<col style="width: 10%" />
<col style="width: 6%" />
<col style="width: 8%" />
<col style="width: 12%" />
<col style="width: 21%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>hire_date</p>
</blockquote></th>
<th><blockquote>
<p>address</p>
</blockquote></th>
<th><blockquote>
<p>city</p>
</blockquote></th>
<th><blockquote>
<p>state</p>
</blockquote></th>
<th><blockquote>
<p>country</p>
</blockquote></th>
<th><blockquote>
<p>postal_code</p>
</blockquote></th>
<th><blockquote>
<p>phone</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>14-08-2016 00:00</p>
</blockquote></td>
<td><blockquote>
<p>11120 Jasper Ave NW</p>
</blockquote></td>
<td><blockquote>
<p>Edmonton</p>
</blockquote></td>
<td><blockquote>
<p>AB</p>
</blockquote></td>
<td><blockquote>
<p>Canada</p>
</blockquote></td>
<td><blockquote>
<p>T5K 2N1</p>
</blockquote></td>
<td><blockquote>
<p>+1 (780) 428-9482</p>
</blockquote></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 46%" />
<col style="width: 53%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>fax</p>
</blockquote></th>
<th><blockquote>
<p>email</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>+1 (780) 428-3457</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:andrew@chinookcorp.com">andrew@chinookcorp.com</a></p>
</blockquote></td>
</tr>
</tbody>
</table>

Q2. Which countries have the most Invoices?

SELECT billing_country, COUNT(invoice_id) AS invoice_count FROM invoice GROUP BY billing_country ORDER BY invoice_count DESC;

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 49%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>billing_country</p>
</blockquote></th>
<th>COUNT(invoice_id)</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>USA</p>
</blockquote></td>
<td>131</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Canada</p>
</blockquote></td>
<td>76</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Brazil</p>
</blockquote></td>
<td>61</td>
</tr>
<tr class="even">
<td><blockquote>
<p>France</p>
</blockquote></td>
<td>50</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Germany</p>
</blockquote></td>
<td>41</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Czech Republic</p>
</blockquote></td>
<td>30</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Portugal</p>
</blockquote></td>
<td>29</td>
</tr>
<tr class="even">
<td><blockquote>
<p>United Kingdom</p>
</blockquote></td>
<td>28</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>India</p>
</blockquote></td>
<td>21</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Ireland</p>
</blockquote></td>
<td>13</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Chile</p>
</blockquote></td>
<td>13</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Finland</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Spain</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Poland</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Denmark</p>
</blockquote></td>
<td>10</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 49%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>Australia</p>
</blockquote></th>
<th>10</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>Hungary</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Sweden</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Netherlands</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Norway</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Italy</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Austria</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Belgium</p>
</blockquote></td>
<td>7</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Argentina</p>
</blockquote></td>
<td>5</td>
</tr>
</tbody>
</table>

Q3. What are top 3 values of total invoice?

SELECT * FROM invoice ORDER BY total DESC LIMIT 3;

<table>
<colgroup>
<col style="width: 12%" />
<col style="width: 14%" />
<col style="width: 14%" />
<col style="width: 27%" />
<col style="width: 15%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>invoice_id</p>
</blockquote></th>
<th><blockquote>
<p>customer_id</p>
</blockquote></th>
<th><blockquote>
<p>invoice_date</p>
</blockquote></th>
<th><blockquote>
<p>billing_address</p>
</blockquote></th>
<th><blockquote>
<p>billing_city</p>
</blockquote></th>
<th><blockquote>
<p>billing_country</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>183</p>
</blockquote></td>
<td><blockquote>
<p>42</p>
</blockquote></td>
<td><blockquote>
<p>09-02-2018</p>
</blockquote></td>
<td><blockquote>
<p>9, Place Louis Barthou</p>
</blockquote></td>
<td><blockquote>
<p>Bordeaux</p>
</blockquote></td>
<td><blockquote>
<p>France</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>92</p>
</blockquote></td>
<td><blockquote>
<p>32</p>
</blockquote></td>
<td><blockquote>
<p>02-07-2017</p>
</blockquote></td>
<td><blockquote>
<p>696 Osborne Street</p>
</blockquote></td>
<td><blockquote>
<p>Winnipeg</p>
</blockquote></td>
<td><blockquote>
<p>Canada</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>31</p>
</blockquote></td>
<td><blockquote>
<p>3</p>
</blockquote></td>
<td><blockquote>
<p>21-02-2017</p>
</blockquote></td>
<td><blockquote>
<p>1498 rue BÃƒÂ©langer</p>
</blockquote></td>
<td><blockquote>
<p>MontrÃƒÂ©al</p>
</blockquote></td>
<td><blockquote>
<p>Canada</p>
</blockquote></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 16%" />
<col style="width: 33%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>total</p>
</blockquote></th>
<th><blockquote>
<p>billing_state</p>
</blockquote></th>
<th><blockquote>
<p>billing_postal_code</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>24</p>
</blockquote></td>
<td><blockquote>
<p>None</p>
</blockquote></td>
<td><blockquote>
<p>33000</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>20</p>
</blockquote></td>
<td><blockquote>
<p>MB</p>
</blockquote></td>
<td><blockquote>
<p>R3L 2B9</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>20</p>
</blockquote></td>
<td><blockquote>
<p>QC</p>
</blockquote></td>
<td><blockquote>
<p>H2G 1A7</p>
</blockquote></td>
</tr>
</tbody>
</table>

Q4. Which city has the best customers? We would like to throw a promotional Music Festival in the city we made the most money. Write a query that returns one city that has the highest sum of invoice totals. Return both the city name & sum of all invoice totals.

SELECT billing_country, SUM(total) AS total FROM invoice GROUP BY billing_country ORDER BY total DESC LIMIT 1;

<table>
<colgroup>
<col style="width: 70%" />
<col style="width: 29%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>billing_country</p>
</blockquote></th>
<th><blockquote>
<p>total</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>USA</p>
</blockquote></td>
<td><blockquote>
<p>1051</p>
</blockquote></td>
</tr>
</tbody>
</table>

Q5. Who is the best customer? The customer who has spent the most money will be declared the best customer. Write a query that returns the person who has spent the most money.

SELECT c.first_name, c.last_name, SUM(i.total) AS total FROM customer c JOIN invoice i ON c.customer_id = i.customer_id GROUP BY c.first_name, c.last_name ORDER BY total DESC LIMIT 1;

<table style="width:100%;">
<colgroup>
<col style="width: 38%" />
<col style="width: 43%" />
<col style="width: 17%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>first_name</p>
</blockquote></th>
<th><blockquote>
<p>last_name</p>
</blockquote></th>
<th><blockquote>
<p>total</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>FrantiÃ…Â¡ek</p>
</blockquote></td>
<td><blockquote>
<p>WichterlovÃƒÂ¡</p>
</blockquote></td>
<td><blockquote>
<p>146</p>
</blockquote></td>
</tr>
</tbody>
</table>

Q6. Write query to return the email, first name, last name, & Genre of all Rock Music listeners. Return your list ordered alphabetically by email starting with A

SELECT DISTINCT c.last_name, c.first_name, c.email FROM customer c JOIN invoice i ON c.customer_id = i.customer_id JOIN invoice_line il
> ON i.invoice_id = il.invoice_id WHERE il.track_id IN (SELECT track_id FROM track JOIN genre ON genre.genre_id = track.genre_id WHERE genre.name LIKE
'Rock') ORDER BY c.email;

<table>
<colgroup>
<col style="width: 32%" />
<col style="width: 22%" />
<col style="width: 45%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>last_name</p>
</blockquote></th>
<th><blockquote>
<p>first_name</p>
</blockquote></th>
<th><blockquote>
<p>email</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>Mitchell</p>
</blockquote></td>
<td><blockquote>
<p>Aaron</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:aaronmitchell@yahoo.ca">aaronmitchell@yahoo.ca</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Rocha</p>
</blockquote></td>
<td><blockquote>
<p>Alexandre</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:alero@uol.com.br">alero@uol.com.br</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Gruber</p>
</blockquote></td>
<td><blockquote>
<p>Astrid</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:astrid.gruber@apple.at">astrid.gruber@apple.at</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Hansen</p>
</blockquote></td>
<td><blockquote>
<p>BjÃƒÂ¸rn</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:bjorn.hansen@yahoo.no">bjorn.hansen@yahoo.no</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Bernard</p>
</blockquote></td>
<td><blockquote>
<p>Camille</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:camille.bernard@yahoo.fr">camille.bernard@yahoo.fr</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Peeters</p>
</blockquote></td>
<td><blockquote>
<p>Daan</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:daan_peeters@apple.be">daan_peeters@apple.be</a></p>
</blockquote></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 32%" />
<col style="width: 22%" />
<col style="width: 45%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>GutiÃƒÂ©rrez</p>
</blockquote></th>
<th><blockquote>
<p>Diego</p>
</blockquote></th>
<th><blockquote>
<p><a href="mailto:diego.gutierrez@yahoo.ar">diego.gutierrez@yahoo.ar</a></p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>Miller</p>
</blockquote></td>
<td><blockquote>
<p>Dan</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:dmiller@comcast.com">dmiller@comcast.com</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Lefebvre</p>
</blockquote></td>
<td><blockquote>
<p>Dominique</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:dominiquelefebvre@gmail.com">dominiquelefebvre@gmail.com</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Francis</p>
</blockquote></td>
<td><blockquote>
<p>Edward</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:edfrancis@yachoo.ca">edfrancis@yachoo.ca</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Martins</p>
</blockquote></td>
<td><blockquote>
<p>Eduardo</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:eduardo@woodstock.com.br">eduardo@woodstock.com.br</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Sullivan</p>
</blockquote></td>
<td><blockquote>
<p>Ellie</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:ellie.sullivan@shaw.ca">ellie.sullivan@shaw.ca</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Jones</p>
</blockquote></td>
<td><blockquote>
<p>Emma</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:emma_jones@hotmail.com">emma_jones@hotmail.com</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>MuÃƒÂ±oz</p>
</blockquote></td>
<td><blockquote>
<p>Enrique</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:enrique_munoz@yahoo.es">enrique_munoz@yahoo.es</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Ramos</p>
</blockquote></td>
<td><blockquote>
<p>Fernanda</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:fernadaramos4@uol.com.br">fernadaramos4@uol.com.br</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Harris</p>
</blockquote></td>
<td><blockquote>
<p>Frank</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:fharris@google.com">fharris@google.com</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Ralston</p>
</blockquote></td>
<td><blockquote>
<p>Frank</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:fralston@gmail.com">fralston@gmail.com</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>WichterlovÃƒÂ¡</p>
</blockquote></td>
<td><blockquote>
<p>FrantiÃ…Â¡ek</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:frantisekw@jetbrains.com">frantisekw@jetbrains.com</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Tremblay</p>
</blockquote></td>
<td><blockquote>
<p>FranÃƒÂ§ois</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:ftremblay@gmail.com">ftremblay@gmail.com</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Zimmermann</p>
</blockquote></td>
<td><blockquote>
<p>Fynn</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:fzimmermann@yahoo.de">fzimmermann@yahoo.de</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Schneider</p>
</blockquote></td>
<td><blockquote>
<p>Hannah</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:hannah.schneider@yahoo.de">hannah.schneider@yahoo.de</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>HolÃƒÂ½</p>
</blockquote></td>
<td><blockquote>
<p>Helena</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:hholy@gmail.com">hholy@gmail.com</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Leacock</p>
</blockquote></td>
<td><blockquote>
<p>Heather</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:hleacock@gmail.com">hleacock@gmail.com</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>O'Reilly</p>
</blockquote></td>
<td><blockquote>
<p>Hugh</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:hughoreilly@apple.ie">hughoreilly@apple.ie</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Mercier</p>
</blockquote></td>
<td><blockquote>
<p>Isabelle</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:isabelle_mercier@apple.fr">isabelle_mercier@apple.fr</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Smith</p>
</blockquote></td>
<td><blockquote>
<p>Jack</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:jacksmith@microsoft.com">jacksmith@microsoft.com</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Peterson</p>
</blockquote></td>
<td><blockquote>
<p>Jennifer</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:jenniferp@rogers.ca">jenniferp@rogers.ca</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Fernandes</p>
</blockquote></td>
<td><blockquote>
<p>JoÃƒÂ£o</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:jfernandes@yahoo.pt">jfernandes@yahoo.pt</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Johansson</p>
</blockquote></td>
<td><blockquote>
<p>Joakim</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:joakim.johansson@yahoo.se">joakim.johansson@yahoo.se</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Van der Berg</p>
</blockquote></td>
<td><blockquote>
<p>Johannes</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:johavanderberg@yahoo.nl">johavanderberg@yahoo.nl</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Gordon</p>
</blockquote></td>
<td><blockquote>
<p>John</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:johngordon22@yahoo.com">johngordon22@yahoo.com</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Barnett</p>
</blockquote></td>
<td><blockquote>
<p>Julia</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:jubarnett@gmail.com">jubarnett@gmail.com</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Chase</p>
</blockquote></td>
<td><blockquote>
<p>Kathy</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:kachase@hotmail.com">kachase@hotmail.com</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Nielsen</p>
</blockquote></td>
<td><blockquote>
<p>Kara</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:kara.nielsen@jubii.dk">kara.nielsen@jubii.dk</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>KovÃƒÂ¡cs</p>
</blockquote></td>
<td><blockquote>
<p>Ladislav</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:ladislav_kovacs@apple.hu">ladislav_kovacs@apple.hu</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>KÃƒÂ¶hler</p>
</blockquote></td>
<td><blockquote>
<p>Leonie</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:leonekohler@surfeu.de">leonekohler@surfeu.de</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Mancini</p>
</blockquote></td>
<td><blockquote>
<p>Lucas</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:lucas.mancini@yahoo.it">lucas.mancini@yahoo.it</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Rojas</p>
</blockquote></td>
<td><blockquote>
<p>Luis</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:luisrojas@yahoo.cl">luisrojas@yahoo.cl</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Pareek</p>
</blockquote></td>
<td><blockquote>
<p>Manoj</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:manoj.pareek@rediff.com">manoj.pareek@rediff.com</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Dubois</p>
</blockquote></td>
<td><blockquote>
<p>Marc</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:marc.dubois@hotmail.com">marc.dubois@hotmail.com</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Taylor</p>
</blockquote></td>
<td><blockquote>
<p>Mark</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:mark.taylor@yahoo.au">mark.taylor@yahoo.au</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Silk</p>
</blockquote></td>
<td><blockquote>
<p>Martha</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:marthasilk@gmail.com">marthasilk@gmail.com</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Sampaio</p>
</blockquote></td>
<td><blockquote>
<p>Madalena</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:masampaio@sapo.pt">masampaio@sapo.pt</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Philips</p>
</blockquote></td>
<td><blockquote>
<p>Mark</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:mphilips12@shaw.ca">mphilips12@shaw.ca</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>SchrÃƒÂ¶der</p>
</blockquote></td>
<td><blockquote>
<p>Niklas</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:nschroder@surfeu.de">nschroder@surfeu.de</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Gray</p>
</blockquote></td>
<td><blockquote>
<p>Patrick</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:patrick.gray@aol.com">patrick.gray@aol.com</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Hughes</p>
</blockquote></td>
<td><blockquote>
<p>Phil</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:phil.hughes@gmail.com">phil.hughes@gmail.com</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Cunningham</p>
</blockquote></td>
<td><blockquote>
<p>Richard</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:ricunningham@hotmail.com">ricunningham@hotmail.com</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Mishra</p>
</blockquote></td>
<td><blockquote>
<p>Rishabh</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:rishabh_mishra@yahoo.in">rishabh_mishra@yahoo.in</a></p>
</blockquote></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 32%" />
<col style="width: 22%" />
<col style="width: 45%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>Brown</p>
</blockquote></th>
<th><blockquote>
<p>Robert</p>
</blockquote></th>
<th><blockquote>
<p><a href="mailto:robbrown@shaw.ca">robbrown@shaw.ca</a></p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>Almeida</p>
</blockquote></td>
<td><blockquote>
<p>Roberto</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:roberto.almeida@riotur.gov.br">roberto.almeida@riotur.gov.br</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>WÃƒÂ³jcik</p>
</blockquote></td>
<td><blockquote>
<p>StanisÃ…â€šaw</p>
</blockquote></td>
<td><blockquote>
<p>stanisÃ…â€šaw.wÃƒÂ<a href="mailto:jcik@wp.pl">³jci</a>k<a href="mailto:jcik@wp.pl">@wp.pl</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Murray</p>
</blockquote></td>
<td><blockquote>
<p>Steve</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:steve.murray@yahoo.uk">steve.murray@yahoo.uk</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>HÃƒÂ¤mÃƒÂ¤lÃƒÂ¤inen</p>
</blockquote></td>
<td><blockquote>
<p>Terhi</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:terhi.hamalainen@apple.fi">terhi.hamalainen@apple.fi</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Goyer</p>
</blockquote></td>
<td><blockquote>
<p>Tim</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:tgoyer@apple.com">tgoyer@apple.com</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Stevens</p>
</blockquote></td>
<td><blockquote>
<p>Victor</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:vstevens@yahoo.com">vstevens@yahoo.com</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Girard</p>
</blockquote></td>
<td><blockquote>
<p>Wyatt</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:wyatt.girard@yahoo.fr">wyatt.girard@yahoo.fr</a></p>
</blockquote></td>
</tr>
</tbody>
</table>

Q7. Let's invite the artists who have written the most rock music in our dataset. Write a query that returns the Artist name and total track count of the top 10 rock bands

SELECT a.name, COUNT(t.track_id) AS total_count FROM artist a JOIN album al ON a.ArtistID = al.Artist_ID JOIN track t ON al.album_id
= t.album_id WHERE t.genre_id IN (SELECT genre_id FROM genre WHERE name LIKE 'Rock') GROUP BY a.name ORDER BY total_count DESC LIMIT 10;

<table>
<colgroup>
<col style="width: 74%" />
<col style="width: 25%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>name</p>
</blockquote></th>
<th>total_count</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>18</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>14</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>13</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>13</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>12</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Led Zeppelin</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Frank Zappa &amp; Captain Beefheart</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Accept</p>
</blockquote></td>
<td>2</td>
</tr>
</tbody>
</table>

Q8. Return all the track names that have a song length longer than the average song length. Return the Name and Milliseconds for each track. Order by the song length with the longest songs listed first

SELECT name, milliseconds FROM track WHERE milliseconds > ( SELECT AVG(milliseconds) FROM track) ORDER BY milliseconds DESC;

<table>
<colgroup>
<col style="width: 73%" />
<col style="width: 26%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>name</p>
</blockquote></th>
<th>milliseconds</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>Advance Romance</p>
</blockquote></td>
<td>677694</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Sleeping Village</p>
</blockquote></td>
<td>644571</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>You Shook Me(2)</p>
</blockquote></td>
<td>619467</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Talkin' 'Bout Women Obviously</p>
</blockquote></td>
<td>589531</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Stratus</p>
</blockquote></td>
<td>582086</td>
</tr>
<tr class="even">
<td><blockquote>
<p>No More Tears</p>
</blockquote></td>
<td>555075</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>The Alchemist</p>
</blockquote></td>
<td>509413</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Book Of Thel</p>
</blockquote></td>
<td>494393</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>You Oughta Know (Alternate)</p>
</blockquote></td>
<td>491885</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Terra</p>
</blockquote></td>
<td>482429</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Snoopy's search-Red baron</p>
</blockquote></td>
<td>456071</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Sozinho (Hitmakers Classic Mix)</p>
</blockquote></td>
<td>436636</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Master Of Puppets</p>
</blockquote></td>
<td>436453</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Stone Crazy</p>
</blockquote></td>
<td>433397</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Snowblind</p>
</blockquote></td>
<td>420022</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Computadores Fazem Arte</p>
</blockquote></td>
<td>404323</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Jerusalem</p>
</blockquote></td>
<td>402390</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Dazed and Confused</p>
</blockquote></td>
<td>401920</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>The Winner Loses</p>
</blockquote></td>
<td>392254</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Love, Hate, Love</p>
</blockquote></td>
<td>387134</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>ConstruÃƒÂ§ÃƒÂ£o / Deus Lhe Pague</p>
</blockquote></td>
<td>383059</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>382066</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Livin' On The Edge</p>
</blockquote></td>
<td>381231</td>
</tr>
<tr class="even">
<td><blockquote>
<p>I Can't Quit You Baby(2)</p>
</blockquote></td>
<td>380551</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Princess of the Dawn</p>
</blockquote></td>
<td>375418</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Harvester Of Sorrow</p>
</blockquote></td>
<td>374543</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Momma's Gotta Die Tonight</p>
</blockquote></td>
<td>371539</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Vai Passar</p>
</blockquote></td>
<td>369763</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Wherever I May Roam</p>
</blockquote></td>
<td>369345</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Overdose</p>
</blockquote></td>
<td>369319</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 73%" />
<col style="width: 26%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>N.I.B.</p>
</blockquote></th>
<th>368770</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>O Boto (BÃƒÂ´to)</p>
</blockquote></td>
<td>366837</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Let There Be Rock</p>
</blockquote></td>
<td>366654</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>The Begining... At Last</p>
</blockquote></td>
<td>365662</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Carolina Hard-Core Ecstasy</p>
</blockquote></td>
<td>359680</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>World Of Trouble</p>
</blockquote></td>
<td>359157</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Trupets Of Jericho</p>
</blockquote></td>
<td>359131</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Amazing</p>
</blockquote></td>
<td>356519</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Welcome Home (Sanitarium)</p>
</blockquote></td>
<td>350197</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>There Goes The Neighborhood</p>
</blockquote></td>
<td>350171</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Sea Of Sorrow</p>
</blockquote></td>
<td>349831</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Confusion</p>
</blockquote></td>
<td>344163</td>
</tr>
<tr class="even">
<td><blockquote>
<p>For Those About To Rock (We Salute</p>
<p>You)</p>
</blockquote></td>
<td>343719</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Shadow on the Sun</p>
</blockquote></td>
<td>343457</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Balls to the Wall</p>
</blockquote></td>
<td>342562</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Machine Men</p>
</blockquote></td>
<td>341655</td>
</tr>
<tr class="even">
<td><blockquote>
<p>I am the Highway</p>
</blockquote></td>
<td>334942</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Muffin Man</p>
</blockquote></td>
<td>332878</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Go Down</p>
</blockquote></td>
<td>331180</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Janie's Got A Gun</p>
</blockquote></td>
<td>330736</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Bring'em Back Alive</p>
</blockquote></td>
<td>329534</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Sozinho (CaÃƒÂªdrum 'n' Bass)</p>
</blockquote></td>
<td>328071</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Problem Child</p>
</blockquote></td>
<td>325041</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Whole Lotta Rosie</p>
</blockquote></td>
<td>323761</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Intro/ Low Down</p>
</blockquote></td>
<td>323683</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>The Unforgiven</p>
</blockquote></td>
<td>322925</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Love In An Elevator</p>
</blockquote></td>
<td>321828</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Super Terrorizer</p>
</blockquote></td>
<td>319373</td>
</tr>
<tr class="even">
<td><blockquote>
<p>The pleasant pheasant</p>
</blockquote></td>
<td>318066</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Body Count</p>
</blockquote></td>
<td>317936</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Geni E O Zepelim</p>
</blockquote></td>
<td>317570</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>The Last Remaining Light</p>
</blockquote></td>
<td>317492</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Crazy</p>
</blockquote></td>
<td>316656</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>You Shook Me</p>
</blockquote></td>
<td>315951</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Travelling Riverside Blues</p>
</blockquote></td>
<td>312032</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Noite Do Prazer</p>
</blockquote></td>
<td>311353</td>
</tr>
<tr class="even">
<td><blockquote>
<p>What It Takes</p>
</blockquote></td>
<td>310622</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>The Curse</p>
</blockquote></td>
<td>309786</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Cryin'</p>
</blockquote></td>
<td>309263</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Creeping Death</p>
</blockquote></td>
<td>308035</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Angel</p>
</blockquote></td>
<td>307617</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Banditismo Por Uma Questa</p>
</blockquote></td>
<td>307095</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 73%" />
<col style="width: 26%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>Extra</p>
</blockquote></th>
<th>304352</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>Light My Way</p>
</blockquote></td>
<td>303595</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Stronger Than Death</p>
</blockquote></td>
<td>300747</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Voodoo</p>
</blockquote></td>
<td>300721</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Forgiven</p>
</blockquote></td>
<td>300355</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Getaway Car</p>
</blockquote></td>
<td>299598</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Linha Do Equador</p>
</blockquote></td>
<td>299337</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>#1 Zero</p>
</blockquote></td>
<td>299102</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Onde VocÃƒÂª Mora?</p>
</blockquote></td>
<td>298396</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Mel</p>
</blockquote></td>
<td>294765</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Moon germs</p>
</blockquote></td>
<td>294060</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Like a Stone</p>
</blockquote></td>
<td>294034</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Wake Up</p>
</blockquote></td>
<td>293485</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Out Of Exile</p>
</blockquote></td>
<td>291291</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Na Frente Da TV</p>
</blockquote></td>
<td>289750</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Sad But True</p>
</blockquote></td>
<td>288208</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Rios Pontes &amp; Overdrives</p>
</blockquote></td>
<td>286720</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Man In The Box</p>
</blockquote></td>
<td>286641</td>
</tr>
<tr class="even">
<td><blockquote>
<p>The Tower</p>
</blockquote></td>
<td>285257</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>A Sombra Da Maldade</p>
</blockquote></td>
<td>285231</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Garota De Ipanema</p>
</blockquote></td>
<td>285048</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Sunshine</p>
</blockquote></td>
<td>284969</td>
</tr>
<tr class="even">
<td><blockquote>
<p>All I Really Want</p>
</blockquote></td>
<td>284891</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Blood In The Wall</p>
</blockquote></td>
<td>284368</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Maracatu AtÃƒÂ´mico</p>
</blockquote></td>
<td>284264</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Lost My Better Half</p>
</blockquote></td>
<td>284081</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Bye, Bye Brasil</p>
</blockquote></td>
<td>283402</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>King In Crimson</p>
</blockquote></td>
<td>283167</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Gavioes 2001</p>
</blockquote></td>
<td>282723</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>A Estrada</p>
</blockquote></td>
<td>282174</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Born To Booze</p>
</blockquote></td>
<td>282122</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Vida Boa</p>
</blockquote></td>
<td>281730</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Freedom Of Speech</p>
</blockquote></td>
<td>281234</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Mary Jane</p>
</blockquote></td>
<td>280607</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Be Yourself</p>
</blockquote></td>
<td>279484</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Gasoline</p>
</blockquote></td>
<td>279457</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Dandelion</p>
</blockquote></td>
<td>278125</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Show Me How to Live</p>
</blockquote></td>
<td>277890</td>
</tr>
<tr class="even">
<td><blockquote>
<p>It Ain't Like That</p>
</blockquote></td>
<td>277577</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Heaven's Dead</p>
</blockquote></td>
<td>276688</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Like A Bird</p>
</blockquote></td>
<td>276532</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Vai-Vai 2001</p>
</blockquote></td>
<td>276349</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Flor Do Futuro</p>
</blockquote></td>
<td>275748</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 73%" />
<col style="width: 26%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>Do what cha wanna</p>
</blockquote></th>
<th>274155</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>X-9 2001</p>
</blockquote></td>
<td>273920</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Yesterday To Tomorrow</p>
</blockquote></td>
<td>273763</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Phoney Smile Fake Hellos</p>
</blockquote></td>
<td>273606</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Maracatu AtÃƒÂ´mico [Atomic Version]</p>
</blockquote></td>
<td>273084</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>A Cor Do Sol</p>
</blockquote></td>
<td>273031</td>
</tr>
<tr class="even">
<td><blockquote>
<p>200 Years Old</p>
</blockquote></td>
<td>272561</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Samidarish [instrumental]</p>
</blockquote></td>
<td>272431</td>
</tr>
<tr class="even">
<td><blockquote>
<p>The Beginning...At Last</p>
</blockquote></td>
<td>271960</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Canta, Canta Mais</p>
</blockquote></td>
<td>271856</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Samba Makossa</p>
</blockquote></td>
<td>271856</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Spellbound</p>
</blockquote></td>
<td>270863</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Killing Floor</p>
</blockquote></td>
<td>269557</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Bad Boy Boogie</p>
</blockquote></td>
<td>267728</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Head Over Feet</p>
</blockquote></td>
<td>267493</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>SÃƒÂ¡bado A Noite</p>
</blockquote></td>
<td>267363</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Felicidade Urgente</p>
</blockquote></td>
<td>266605</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>A.N.D.R.O.T.A.Z.</p>
</blockquote></td>
<td>266266</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Gates Of Urizen</p>
</blockquote></td>
<td>265351</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Dude (Looks Like A Lady)</p>
</blockquote></td>
<td>264855</td>
</tr>
<tr class="even">
<td><blockquote>
<p>The Wizard</p>
</blockquote></td>
<td>264829</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>FÃƒÂ©rias</p>
</blockquote></td>
<td>264202</td>
</tr>
<tr class="even">
<td><blockquote>
<p>I Can't Quit You Baby</p>
</blockquote></td>
<td>263836</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Evil Walks</p>
</blockquote></td>
<td>263497</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Breaking The Rules</p>
</blockquote></td>
<td>263288</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Set It Off</p>
</blockquote></td>
<td>263262</td>
</tr>
<tr class="even">
<td><blockquote>
<p>I Know Somethin (Bout You)</p>
</blockquote></td>
<td>261955</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Quadrant</p>
</blockquote></td>
<td>261851</td>
</tr>
<tr class="even">
<td><blockquote>
<p>What is and Should Never Be</p>
</blockquote></td>
<td>260675</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Meu Caro Amigo</p>
</blockquote></td>
<td>260257</td>
</tr>
<tr class="even">
<td><blockquote>
<p>ConciliaÃƒÂ§ÃƒÂ£o</p>
</blockquote></td>
<td>257619</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Onde VocÃƒÂª Mora?</p>
</blockquote></td>
<td>256026</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Doesn't Remind Me</p>
</blockquote></td>
<td>255869</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Your Time Has Come</p>
</blockquote></td>
<td>255529</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Johnny B. Goode</p>
</blockquote></td>
<td>254615</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Hell Ain't A Bad Place To Be</p>
</blockquote></td>
<td>254380</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Amor Demais</p>
</blockquote></td>
<td>254040</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Cada Um Cada Um (A Namoradeira)</p>
</blockquote></td>
<td>253492</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Dindi (Dindi)</p>
</blockquote></td>
<td>253178</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Ligia</p>
</blockquote></td>
<td>251977</td>
</tr>
<tr class="even">
<td><blockquote>
<p>A Luz De Tieta</p>
</blockquote></td>
<td>251742</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Da Lama Ao Caos</p>
</blockquote></td>
<td>251559</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Eat The Rich</p>
</blockquote></td>
<td>251036</td>
</tr>
</tbody>
</table>

Q9. Find how much amount spent by each customer on artists? Write a query to return customer name, artist name and total spent.

SELECT c.customer_id,c.first_name AS customer_name, ar.name AS artist_name, SUM(i.total) AS total_spent FROM Customer c JOIN Invoice i ON c.customer_id = i.customer_id JOIN Invoice_Line il ON i.invoice_id = il.invoice_id JOIN Track t ON t.track_id = il.track_id JOIN Album a ON t.album_id = a.album_id JOIN
Artist ar ON ar.ArtistID = a.Artist_ID GROUP BY 1, 2, 3 ORDER BY total_spent DESC;

<table>
<colgroup>
<col style="width: 17%" />
<col style="width: 22%" />
<col style="width: 43%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th>customer_id</th>
<th><blockquote>
<p>customer_name</p>
</blockquote></th>
<th><blockquote>
<p>name</p>
</blockquote></th>
<th>total_spent</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>2</td>
<td><blockquote>
<p>Leonie</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>196</td>
</tr>
<tr class="even">
<td>13</td>
<td><blockquote>
<p>Fernanda</p>
</blockquote></td>
<td><blockquote>
<p>AntÃƒÂ´nio Carlos Jobim</p>
</blockquote></td>
<td>196</td>
</tr>
<tr class="odd">
<td>15</td>
<td><blockquote>
<p>Jennifer</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>195</td>
</tr>
<tr class="even">
<td>55</td>
<td><blockquote>
<p>Mark</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>195</td>
</tr>
<tr class="odd">
<td>30</td>
<td><blockquote>
<p>Edward</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>169</td>
</tr>
<tr class="even">
<td>52</td>
<td><blockquote>
<p>Emma</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>169</td>
</tr>
<tr class="odd">
<td>54</td>
<td><blockquote>
<p>Steve</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>164</td>
</tr>
<tr class="even">
<td>34</td>
<td><blockquote>
<p>JoÃƒÂ£o</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>146</td>
</tr>
<tr class="odd">
<td>25</td>
<td><blockquote>
<p>Victor</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>144</td>
</tr>
<tr class="even">
<td>49</td>
<td><blockquote>
<p>StanisÃ…â€šaw</p>
</blockquote></td>
<td><blockquote>
<p>Buddy Guy</p>
</blockquote></td>
<td>121</td>
</tr>
<tr class="odd">
<td>53</td>
<td><blockquote>
<p>Phil</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>110</td>
</tr>
<tr class="even">
<td>21</td>
<td><blockquote>
<p>Kathy</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>94</td>
</tr>
<tr class="odd">
<td>49</td>
<td><blockquote>
<p>StanisÃ…â€šaw</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>90</td>
</tr>
<tr class="even">
<td>24</td>
<td><blockquote>
<p>Frank</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>64</td>
</tr>
<tr class="odd">
<td>3</td>
<td><blockquote>
<p>FranÃƒÂ§ois</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>64</td>
</tr>
<tr class="even">
<td>21</td>
<td><blockquote>
<p>Kathy</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>49</td>
</tr>
<tr class="odd">
<td>24</td>
<td><blockquote>
<p>Frank</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>49</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 17%" />
<col style="width: 22%" />
<col style="width: 43%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th>20</th>
<th><blockquote>
<p>Dan</p>
</blockquote></th>
<th><blockquote>
<p>Alice In Chains</p>
</blockquote></th>
<th>33</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>6</td>
<td><blockquote>
<p>Helena</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>33</td>
</tr>
<tr class="even">
<td>38</td>
<td><blockquote>
<p>Niklas</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>30</td>
</tr>
<tr class="odd">
<td>43</td>
<td><blockquote>
<p>Isabelle</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>27</td>
</tr>
<tr class="even">
<td>51</td>
<td><blockquote>
<p>Joakim</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>26</td>
</tr>
<tr class="odd">
<td>57</td>
<td><blockquote>
<p>Luis</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>26</td>
</tr>
<tr class="even">
<td>31</td>
<td><blockquote>
<p>Martha</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>25</td>
</tr>
<tr class="odd">
<td>58</td>
<td><blockquote>
<p>Manoj</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>25</td>
</tr>
<tr class="even">
<td>42</td>
<td><blockquote>
<p>Wyatt</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>25</td>
</tr>
<tr class="odd">
<td>3</td>
<td><blockquote>
<p>FranÃƒÂ§ois</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>24</td>
</tr>
<tr class="even">
<td>35</td>
<td><blockquote>
<p>Madalena</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>24</td>
</tr>
<tr class="odd">
<td>42</td>
<td><blockquote>
<p>Wyatt</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>23</td>
</tr>
<tr class="even">
<td>44</td>
<td><blockquote>
<p>Terhi</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>23</td>
</tr>
<tr class="odd">
<td>16</td>
<td><blockquote>
<p>Frank</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>22</td>
</tr>
<tr class="even">
<td>6</td>
<td><blockquote>
<p>Helena</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>22</td>
</tr>
<tr class="odd">
<td>17</td>
<td><blockquote>
<p>Jack</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>22</td>
</tr>
<tr class="even">
<td>38</td>
<td><blockquote>
<p>Niklas</p>
</blockquote></td>
<td><blockquote>
<p>Buddy Guy</p>
</blockquote></td>
<td>21</td>
</tr>
<tr class="odd">
<td>17</td>
<td><blockquote>
<p>Jack</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>21</td>
</tr>
<tr class="even">
<td>27</td>
<td><blockquote>
<p>Patrick</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>21</td>
</tr>
<tr class="odd">
<td>30</td>
<td><blockquote>
<p>Edward</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>21</td>
</tr>
<tr class="even">
<td>50</td>
<td><blockquote>
<p>Enrique</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>19</td>
</tr>
<tr class="odd">
<td>36</td>
<td><blockquote>
<p>Hannah</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>19</td>
</tr>
<tr class="even">
<td>13</td>
<td><blockquote>
<p>Fernanda</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>19</td>
</tr>
<tr class="odd">
<td>20</td>
<td><blockquote>
<p>Dan</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>19</td>
</tr>
<tr class="even">
<td>43</td>
<td><blockquote>
<p>Isabelle</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>19</td>
</tr>
<tr class="odd">
<td>3</td>
<td><blockquote>
<p>FranÃƒÂ§ois</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>19</td>
</tr>
<tr class="even">
<td>59</td>
<td><blockquote>
<p>Rishabh</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>18</td>
</tr>
<tr class="odd">
<td>49</td>
<td><blockquote>
<p>StanisÃ…â€šaw</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>18</td>
</tr>
<tr class="even">
<td>43</td>
<td><blockquote>
<p>Isabelle</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>17</td>
</tr>
<tr class="odd">
<td>50</td>
<td><blockquote>
<p>Enrique</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>17</td>
</tr>
<tr class="even">
<td>17</td>
<td><blockquote>
<p>Jack</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>17</td>
</tr>
<tr class="odd">
<td>7</td>
<td><blockquote>
<p>Astrid</p>
</blockquote></td>
<td><blockquote>
<p>Black Label Society</p>
</blockquote></td>
<td>17</td>
</tr>
<tr class="even">
<td>8</td>
<td><blockquote>
<p>Daan</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>16</td>
</tr>
<tr class="odd">
<td>48</td>
<td><blockquote>
<p>Johannes</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>16</td>
</tr>
<tr class="even">
<td>34</td>
<td><blockquote>
<p>JoÃƒÂ£o</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>15</td>
</tr>
<tr class="odd">
<td>20</td>
<td><blockquote>
<p>Dan</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>15</td>
</tr>
<tr class="even">
<td>57</td>
<td><blockquote>
<p>Luis</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>15</td>
</tr>
<tr class="odd">
<td>36</td>
<td><blockquote>
<p>Hannah</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>15</td>
</tr>
<tr class="even">
<td>26</td>
<td><blockquote>
<p>Richard</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>15</td>
</tr>
<tr class="odd">
<td>42</td>
<td><blockquote>
<p>Wyatt</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>14</td>
</tr>
<tr class="even">
<td>45</td>
<td><blockquote>
<p>Ladislav</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>14</td>
</tr>
<tr class="odd">
<td>59</td>
<td><blockquote>
<p>Rishabh</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>14</td>
</tr>
<tr class="even">
<td>40</td>
<td><blockquote>
<p>Dominique</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>14</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 17%" />
<col style="width: 22%" />
<col style="width: 43%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th>48</th>
<th><blockquote>
<p>Johannes</p>
</blockquote></th>
<th><blockquote>
<p>Buddy Guy</p>
</blockquote></th>
<th>14</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>7</td>
<td><blockquote>
<p>Astrid</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>13</td>
</tr>
<tr class="even">
<td>7</td>
<td><blockquote>
<p>Astrid</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>13</td>
</tr>
<tr class="odd">
<td>28</td>
<td><blockquote>
<p>Julia</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>13</td>
</tr>
<tr class="even">
<td>36</td>
<td><blockquote>
<p>Hannah</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>13</td>
</tr>
<tr class="odd">
<td>12</td>
<td><blockquote>
<p>Roberto</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>12</td>
</tr>
<tr class="even">
<td>19</td>
<td><blockquote>
<p>Tim</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>12</td>
</tr>
<tr class="odd">
<td>49</td>
<td><blockquote>
<p>StanisÃ…â€šaw</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="even">
<td>9</td>
<td><blockquote>
<p>Kara</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="odd">
<td>46</td>
<td><blockquote>
<p>Hugh</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="even">
<td>39</td>
<td><blockquote>
<p>Camille</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="odd">
<td>39</td>
<td><blockquote>
<p>Camille</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="even">
<td>57</td>
<td><blockquote>
<p>Luis</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="odd">
<td>36</td>
<td><blockquote>
<p>Hannah</p>
</blockquote></td>
<td><blockquote>
<p>Billy Cobham</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="even">
<td>45</td>
<td><blockquote>
<p>Ladislav</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="odd">
<td>45</td>
<td><blockquote>
<p>Ladislav</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="even">
<td>32</td>
<td><blockquote>
<p>Aaron</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="odd">
<td>32</td>
<td><blockquote>
<p>Aaron</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="even">
<td>22</td>
<td><blockquote>
<p>Heather</p>
</blockquote></td>
<td><blockquote>
<p>Led Zeppelin</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="odd">
<td>6</td>
<td><blockquote>
<p>Helena</p>
</blockquote></td>
<td><blockquote>
<p>AntÃƒÂ´nio Carlos Jobim</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="even">
<td>35</td>
<td><blockquote>
<p>Madalena</p>
</blockquote></td>
<td><blockquote>
<p>Accept</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="odd">
<td>17</td>
<td><blockquote>
<p>Jack</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="even">
<td>27</td>
<td><blockquote>
<p>Patrick</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="odd">
<td>20</td>
<td><blockquote>
<p>Dan</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="even">
<td>2</td>
<td><blockquote>
<p>Leonie</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="odd">
<td>6</td>
<td><blockquote>
<p>Helena</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="even">
<td>17</td>
<td><blockquote>
<p>Jack</p>
</blockquote></td>
<td><blockquote>
<p>Accept</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="odd">
<td>58</td>
<td><blockquote>
<p>Manoj</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="even">
<td>58</td>
<td><blockquote>
<p>Manoj</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="odd">
<td>58</td>
<td><blockquote>
<p>Manoj</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="even">
<td>8</td>
<td><blockquote>
<p>Daan</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="odd">
<td>8</td>
<td><blockquote>
<p>Daan</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="even">
<td>8</td>
<td><blockquote>
<p>Daan</p>
</blockquote></td>
<td><blockquote>
<p>Black Label Society</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="odd">
<td>23</td>
<td><blockquote>
<p>John</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="even">
<td>6</td>
<td><blockquote>
<p>Helena</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="odd">
<td>6</td>
<td><blockquote>
<p>Helena</p>
</blockquote></td>
<td><blockquote>
<p>Bruce Dickinson</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="even">
<td>41</td>
<td><blockquote>
<p>Marc</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="odd">
<td>5</td>
<td><blockquote>
<p>FrantiÃ…Â¡ek</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="even">
<td>57</td>
<td><blockquote>
<p>Luis</p>
</blockquote></td>
<td><blockquote>
<p>Caetano Veloso</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="odd">
<td>2</td>
<td><blockquote>
<p>Leonie</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="even">
<td>49</td>
<td><blockquote>
<p>StanisÃ…â€šaw</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="odd">
<td>55</td>
<td><blockquote>
<p>Mark</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="even">
<td>55</td>
<td><blockquote>
<p>Mark</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>11</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 17%" />
<col style="width: 22%" />
<col style="width: 43%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th>12</th>
<th><blockquote>
<p>Roberto</p>
</blockquote></th>
<th><blockquote>
<p>Alice In Chains</p>
</blockquote></th>
<th>11</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>12</td>
<td><blockquote>
<p>Roberto</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="even">
<td>12</td>
<td><blockquote>
<p>Roberto</p>
</blockquote></td>
<td><blockquote>
<p>Black Label Society</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="odd">
<td>12</td>
<td><blockquote>
<p>Roberto</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="even">
<td>30</td>
<td><blockquote>
<p>Edward</p>
</blockquote></td>
<td><blockquote>
<p>Buddy Guy</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="odd">
<td>59</td>
<td><blockquote>
<p>Rishabh</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="even">
<td>43</td>
<td><blockquote>
<p>Isabelle</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="odd">
<td>43</td>
<td><blockquote>
<p>Isabelle</p>
</blockquote></td>
<td><blockquote>
<p>Led Zeppelin</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="even">
<td>37</td>
<td><blockquote>
<p>Fynn</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="odd">
<td>57</td>
<td><blockquote>
<p>Luis</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="even">
<td>10</td>
<td><blockquote>
<p>Eduardo</p>
</blockquote></td>
<td><blockquote>
<p>Black Label Society</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="odd">
<td>33</td>
<td><blockquote>
<p>Ellie</p>
</blockquote></td>
<td><blockquote>
<p>Led Zeppelin</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="even">
<td>33</td>
<td><blockquote>
<p>Ellie</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="odd">
<td>13</td>
<td><blockquote>
<p>Fernanda</p>
</blockquote></td>
<td><blockquote>
<p>Black Label Society</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="even">
<td>3</td>
<td><blockquote>
<p>FranÃƒÂ§ois</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="odd">
<td>3</td>
<td><blockquote>
<p>FranÃƒÂ§ois</p>
</blockquote></td>
<td><blockquote>
<p>Chico Buarque</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="even">
<td>3</td>
<td><blockquote>
<p>FranÃƒÂ§ois</p>
</blockquote></td>
<td><blockquote>
<p>Buddy Guy</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="odd">
<td>35</td>
<td><blockquote>
<p>Madalena</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="even">
<td>35</td>
<td><blockquote>
<p>Madalena</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="odd">
<td>25</td>
<td><blockquote>
<p>Victor</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="even">
<td>34</td>
<td><blockquote>
<p>JoÃƒÂ£o</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="odd">
<td>57</td>
<td><blockquote>
<p>Luis</p>
</blockquote></td>
<td><blockquote>
<p>Bruce Dickinson</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="even">
<td>57</td>
<td><blockquote>
<p>Luis</p>
</blockquote></td>
<td><blockquote>
<p>Led Zeppelin</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="odd">
<td>58</td>
<td><blockquote>
<p>Manoj</p>
</blockquote></td>
<td><blockquote>
<p>Black Label Society</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="even">
<td>28</td>
<td><blockquote>
<p>Julia</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="odd">
<td>42</td>
<td><blockquote>
<p>Wyatt</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="even">
<td>50</td>
<td><blockquote>
<p>Enrique</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="odd">
<td>21</td>
<td><blockquote>
<p>Kathy</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="even">
<td>21</td>
<td><blockquote>
<p>Kathy</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="odd">
<td>50</td>
<td><blockquote>
<p>Enrique</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="even">
<td>46</td>
<td><blockquote>
<p>Hugh</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="odd">
<td>46</td>
<td><blockquote>
<p>Hugh</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="even">
<td>3</td>
<td><blockquote>
<p>FranÃƒÂ§ois</p>
</blockquote></td>
<td><blockquote>
<p>Led Zeppelin</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="odd">
<td>26</td>
<td><blockquote>
<p>Richard</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="even">
<td>54</td>
<td><blockquote>
<p>Steve</p>
</blockquote></td>
<td><blockquote>
<p>Cidade Negra</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="odd">
<td>18</td>
<td><blockquote>
<p>Michelle</p>
</blockquote></td>
<td><blockquote>
<p>Bruce Dickinson</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="even">
<td>13</td>
<td><blockquote>
<p>Fernanda</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="odd">
<td>5</td>
<td><blockquote>
<p>FrantiÃ…Â¡ek</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="even">
<td>5</td>
<td><blockquote>
<p>FrantiÃ…Â¡ek</p>
</blockquote></td>
<td><blockquote>
<p>Caetano Veloso</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="odd">
<td>5</td>
<td><blockquote>
<p>FrantiÃ…Â¡ek</p>
</blockquote></td>
<td><blockquote>
<p>Black Label Society</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="even">
<td>30</td>
<td><blockquote>
<p>Edward</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="odd">
<td>53</td>
<td><blockquote>
<p>Phil</p>
</blockquote></td>
<td><blockquote>
<p>Chico Buarque</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="even">
<td>53</td>
<td><blockquote>
<p>Phil</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>10</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 17%" />
<col style="width: 22%" />
<col style="width: 43%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th>24</th>
<th><blockquote>
<p>Frank</p>
</blockquote></th>
<th><blockquote>
<p>Apocalyptica</p>
</blockquote></th>
<th>10</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>18</td>
<td><blockquote>
<p>Michelle</p>
</blockquote></td>
<td><blockquote>
<p>Caetano Veloso</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="even">
<td>18</td>
<td><blockquote>
<p>Michelle</p>
</blockquote></td>
<td><blockquote>
<p>Buddy Guy</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="odd">
<td>19</td>
<td><blockquote>
<p>Tim</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="even">
<td>5</td>
<td><blockquote>
<p>FrantiÃ…Â¡ek</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="odd">
<td>50</td>
<td><blockquote>
<p>Enrique</p>
</blockquote></td>
<td><blockquote>
<p>Cidade Negra</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="even">
<td>59</td>
<td><blockquote>
<p>Rishabh</p>
</blockquote></td>
<td><blockquote>
<p>Led Zeppelin</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="odd">
<td>42</td>
<td><blockquote>
<p>Wyatt</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="even">
<td>59</td>
<td><blockquote>
<p>Rishabh</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="odd">
<td>41</td>
<td><blockquote>
<p>Marc</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="even">
<td>28</td>
<td><blockquote>
<p>Julia</p>
</blockquote></td>
<td><blockquote>
<p>Billy Cobham</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="odd">
<td>51</td>
<td><blockquote>
<p>Joakim</p>
</blockquote></td>
<td><blockquote>
<p>Buddy Guy</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="even">
<td>58</td>
<td><blockquote>
<p>Manoj</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="odd">
<td>4</td>
<td><blockquote>
<p>BjÃƒÂ¸rn</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="even">
<td>48</td>
<td><blockquote>
<p>Johannes</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="odd">
<td>22</td>
<td><blockquote>
<p>Heather</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="even">
<td>52</td>
<td><blockquote>
<p>Emma</p>
</blockquote></td>
<td><blockquote>
<p>Black Label Society</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="odd">
<td>26</td>
<td><blockquote>
<p>Richard</p>
</blockquote></td>
<td><blockquote>
<p>Buddy Guy</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="even">
<td>54</td>
<td><blockquote>
<p>Steve</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="odd">
<td>54</td>
<td><blockquote>
<p>Steve</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="even">
<td>7</td>
<td><blockquote>
<p>Astrid</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="odd">
<td>18</td>
<td><blockquote>
<p>Michelle</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="even">
<td>38</td>
<td><blockquote>
<p>Niklas</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="odd">
<td>38</td>
<td><blockquote>
<p>Niklas</p>
</blockquote></td>
<td><blockquote>
<p>Caetano Veloso</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="even">
<td>3</td>
<td><blockquote>
<p>FranÃƒÂ§ois</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="odd">
<td>27</td>
<td><blockquote>
<p>Patrick</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="even">
<td>27</td>
<td><blockquote>
<p>Patrick</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="odd">
<td>40</td>
<td><blockquote>
<p>Dominique</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="even">
<td>39</td>
<td><blockquote>
<p>Camille</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="odd">
<td>39</td>
<td><blockquote>
<p>Camille</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="even">
<td>39</td>
<td><blockquote>
<p>Camille</p>
</blockquote></td>
<td><blockquote>
<p>Bruce Dickinson</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="odd">
<td>44</td>
<td><blockquote>
<p>Terhi</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="even">
<td>19</td>
<td><blockquote>
<p>Tim</p>
</blockquote></td>
<td><blockquote>
<p>Billy Cobham</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="odd">
<td>19</td>
<td><blockquote>
<p>Tim</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="even">
<td>15</td>
<td><blockquote>
<p>Jennifer</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="odd">
<td>54</td>
<td><blockquote>
<p>Steve</p>
</blockquote></td>
<td><blockquote>
<p>Accept</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="even">
<td>2</td>
<td><blockquote>
<p>Leonie</p>
</blockquote></td>
<td><blockquote>
<p>Buddy Guy</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="odd">
<td>2</td>
<td><blockquote>
<p>Leonie</p>
</blockquote></td>
<td><blockquote>
<p>Chico Buarque</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="even">
<td>24</td>
<td><blockquote>
<p>Frank</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="odd">
<td>41</td>
<td><blockquote>
<p>Marc</p>
</blockquote></td>
<td><blockquote>
<p>AntÃƒÂ´nio Carlos Jobim</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="even">
<td>41</td>
<td><blockquote>
<p>Marc</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="odd">
<td>15</td>
<td><blockquote>
<p>Jennifer</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="even">
<td>10</td>
<td><blockquote>
<p>Eduardo</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>8</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 17%" />
<col style="width: 22%" />
<col style="width: 43%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th>6</th>
<th><blockquote>
<p>Helena</p>
</blockquote></th>
<th><blockquote>
<p>Chico Science &amp; NaÃƒÂ§ÃƒÂ£o</p>
<p>Zumbi</p>
</blockquote></th>
<th>8</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>34</td>
<td><blockquote>
<p>JoÃƒÂ£o</p>
</blockquote></td>
<td><blockquote>
<p>Accept</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="even">
<td>43</td>
<td><blockquote>
<p>Isabelle</p>
</blockquote></td>
<td><blockquote>
<p>Buddy Guy</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="odd">
<td>43</td>
<td><blockquote>
<p>Isabelle</p>
</blockquote></td>
<td><blockquote>
<p>Chico Buarque</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="even">
<td>30</td>
<td><blockquote>
<p>Edward</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="odd">
<td>12</td>
<td><blockquote>
<p>Roberto</p>
</blockquote></td>
<td><blockquote>
<p>Chico Science &amp; NaÃƒÂ§ÃƒÂ£o</p>
<p>Zumbi</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="even">
<td>48</td>
<td><blockquote>
<p>Johannes</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="odd">
<td>11</td>
<td><blockquote>
<p>Alexandre</p>
</blockquote></td>
<td><blockquote>
<p>Chico Buarque</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="even">
<td>11</td>
<td><blockquote>
<p>Alexandre</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="odd">
<td>10</td>
<td><blockquote>
<p>Eduardo</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="even">
<td>33</td>
<td><blockquote>
<p>Ellie</p>
</blockquote></td>
<td><blockquote>
<p>Caetano Veloso</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="odd">
<td>23</td>
<td><blockquote>
<p>John</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="even">
<td>23</td>
<td><blockquote>
<p>John</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="odd">
<td>23</td>
<td><blockquote>
<p>John</p>
</blockquote></td>
<td><blockquote>
<p>Buddy Guy</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="even">
<td>59</td>
<td><blockquote>
<p>Rishabh</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="odd">
<td>59</td>
<td><blockquote>
<p>Rishabh</p>
</blockquote></td>
<td><blockquote>
<p>Caetano Veloso</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="even">
<td>59</td>
<td><blockquote>
<p>Rishabh</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="odd">
<td>59</td>
<td><blockquote>
<p>Rishabh</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="even">
<td>10</td>
<td><blockquote>
<p>Eduardo</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>7</td>
</tr>
<tr class="odd">
<td>51</td>
<td><blockquote>
<p>Joakim</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>7</td>
</tr>
<tr class="even">
<td>49</td>
<td><blockquote>
<p>StanisÃ…â€šaw</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>7</td>
</tr>
<tr class="odd">
<td>38</td>
<td><blockquote>
<p>Niklas</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>7</td>
</tr>
<tr class="even">
<td>38</td>
<td><blockquote>
<p>Niklas</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>7</td>
</tr>
<tr class="odd">
<td>52</td>
<td><blockquote>
<p>Emma</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>7</td>
</tr>
<tr class="even">
<td>56</td>
<td><blockquote>
<p>Diego</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>7</td>
</tr>
<tr class="odd">
<td>43</td>
<td><blockquote>
<p>Isabelle</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>7</td>
</tr>
<tr class="even">
<td>55</td>
<td><blockquote>
<p>Mark</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>7</td>
</tr>
<tr class="odd">
<td>19</td>
<td><blockquote>
<p>Tim</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>7</td>
</tr>
<tr class="even">
<td>42</td>
<td><blockquote>
<p>Wyatt</p>
</blockquote></td>
<td><blockquote>
<p>AntÃƒÂ´nio Carlos Jobim</p>
</blockquote></td>
<td>7</td>
</tr>
<tr class="odd">
<td>42</td>
<td><blockquote>
<p>Wyatt</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>7</td>
</tr>
<tr class="even">
<td>53</td>
<td><blockquote>
<p>Phil</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>7</td>
</tr>
<tr class="odd">
<td>5</td>
<td><blockquote>
<p>FrantiÃ…Â¡ek</p>
</blockquote></td>
<td><blockquote>
<p>Led Zeppelin</p>
</blockquote></td>
<td>7</td>
</tr>
<tr class="even">
<td>48</td>
<td><blockquote>
<p>Johannes</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>7</td>
</tr>
<tr class="odd">
<td>32</td>
<td><blockquote>
<p>Aaron</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>7</td>
</tr>
<tr class="even">
<td>35</td>
<td><blockquote>
<p>Madalena</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>7</td>
</tr>
<tr class="odd">
<td>8</td>
<td><blockquote>
<p>Daan</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>6</td>
</tr>
<tr class="even">
<td>15</td>
<td><blockquote>
<p>Jennifer</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>6</td>
</tr>
<tr class="odd">
<td>29</td>
<td><blockquote>
<p>Robert</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>6</td>
</tr>
<tr class="even">
<td>20</td>
<td><blockquote>
<p>Dan</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>6</td>
</tr>
<tr class="odd">
<td>47</td>
<td><blockquote>
<p>Lucas</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>6</td>
</tr>
<tr class="even">
<td>4</td>
<td><blockquote>
<p>BjÃƒÂ¸rn</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>6</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 17%" />
<col style="width: 22%" />
<col style="width: 43%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th>4</th>
<th><blockquote>
<p>BjÃƒÂ¸rn</p>
</blockquote></th>
<th><blockquote>
<p>Body Count</p>
</blockquote></th>
<th>6</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>14</td>
<td><blockquote>
<p>Mark</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>6</td>
</tr>
<tr class="even">
<td>14</td>
<td><blockquote>
<p>Mark</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>6</td>
</tr>
<tr class="odd">
<td>14</td>
<td><blockquote>
<p>Mark</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>6</td>
</tr>
<tr class="even">
<td>8</td>
<td><blockquote>
<p>Daan</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>6</td>
</tr>
<tr class="odd">
<td>25</td>
<td><blockquote>
<p>Victor</p>
</blockquote></td>
<td><blockquote>
<p>Black Label Society</p>
</blockquote></td>
<td>6</td>
</tr>
<tr class="even">
<td>25</td>
<td><blockquote>
<p>Victor</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>6</td>
</tr>
<tr class="odd">
<td>26</td>
<td><blockquote>
<p>Richard</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>6</td>
</tr>
<tr class="even">
<td>26</td>
<td><blockquote>
<p>Richard</p>
</blockquote></td>
<td><blockquote>
<p>Caetano Veloso</p>
</blockquote></td>
<td>6</td>
</tr>
<tr class="odd">
<td>6</td>
<td><blockquote>
<p>Helena</p>
</blockquote></td>
<td><blockquote>
<p>Led Zeppelin</p>
</blockquote></td>
<td>6</td>
</tr>
<tr class="even">
<td>10</td>
<td><blockquote>
<p>Eduardo</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>6</td>
</tr>
<tr class="odd">
<td>45</td>
<td><blockquote>
<p>Ladislav</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>6</td>
</tr>
<tr class="even">
<td>34</td>
<td><blockquote>
<p>JoÃƒÂ£o</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>5</td>
</tr>
<tr class="odd">
<td>9</td>
<td><blockquote>
<p>Kara</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>5</td>
</tr>
<tr class="even">
<td>30</td>
<td><blockquote>
<p>Edward</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>5</td>
</tr>
<tr class="odd">
<td>30</td>
<td><blockquote>
<p>Edward</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>5</td>
</tr>
<tr class="even">
<td>9</td>
<td><blockquote>
<p>Kara</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>5</td>
</tr>
<tr class="odd">
<td>9</td>
<td><blockquote>
<p>Kara</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>5</td>
</tr>
<tr class="even">
<td>19</td>
<td><blockquote>
<p>Tim</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>5</td>
</tr>
<tr class="odd">
<td>11</td>
<td><blockquote>
<p>Alexandre</p>
</blockquote></td>
<td><blockquote>
<p>Caetano Veloso</p>
</blockquote></td>
<td>5</td>
</tr>
<tr class="even">
<td>36</td>
<td><blockquote>
<p>Hannah</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>5</td>
</tr>
<tr class="odd">
<td>53</td>
<td><blockquote>
<p>Phil</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>5</td>
</tr>
<tr class="even">
<td>53</td>
<td><blockquote>
<p>Phil</p>
</blockquote></td>
<td><blockquote>
<p>Billy Cobham</p>
</blockquote></td>
<td>5</td>
</tr>
<tr class="odd">
<td>37</td>
<td><blockquote>
<p>Fynn</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>5</td>
</tr>
<tr class="even">
<td>15</td>
<td><blockquote>
<p>Jennifer</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>5</td>
</tr>
<tr class="odd">
<td>15</td>
<td><blockquote>
<p>Jennifer</p>
</blockquote></td>
<td><blockquote>
<p>Black Label Society</p>
</blockquote></td>
<td>5</td>
</tr>
<tr class="even">
<td>32</td>
<td><blockquote>
<p>Aaron</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>4</td>
</tr>
<tr class="odd">
<td>51</td>
<td><blockquote>
<p>Joakim</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>4</td>
</tr>
<tr class="even">
<td>40</td>
<td><blockquote>
<p>Dominique</p>
</blockquote></td>
<td><blockquote>
<p>Chico Buarque</p>
</blockquote></td>
<td>4</td>
</tr>
<tr class="odd">
<td>40</td>
<td><blockquote>
<p>Dominique</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>4</td>
</tr>
<tr class="even">
<td>40</td>
<td><blockquote>
<p>Dominique</p>
</blockquote></td>
<td><blockquote>
<p>Black Label Society</p>
</blockquote></td>
<td>4</td>
</tr>
<tr class="odd">
<td>28</td>
<td><blockquote>
<p>Julia</p>
</blockquote></td>
<td><blockquote>
<p>Body Count</p>
</blockquote></td>
<td>4</td>
</tr>
<tr class="even">
<td>39</td>
<td><blockquote>
<p>Camille</p>
</blockquote></td>
<td><blockquote>
<p>Black Label Society</p>
</blockquote></td>
<td>4</td>
</tr>
<tr class="odd">
<td>48</td>
<td><blockquote>
<p>Johannes</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>4</td>
</tr>
<tr class="even">
<td>30</td>
<td><blockquote>
<p>Edward</p>
</blockquote></td>
<td><blockquote>
<p>AntÃƒÂ´nio Carlos Jobim</p>
</blockquote></td>
<td>4</td>
</tr>
<tr class="odd">
<td>43</td>
<td><blockquote>
<p>Isabelle</p>
</blockquote></td>
<td><blockquote>
<p>Caetano Veloso</p>
</blockquote></td>
<td>3</td>
</tr>
<tr class="even">
<td>47</td>
<td><blockquote>
<p>Lucas</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>3</td>
</tr>
<tr class="odd">
<td>33</td>
<td><blockquote>
<p>Ellie</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>3</td>
</tr>
<tr class="even">
<td>58</td>
<td><blockquote>
<p>Manoj</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>3</td>
</tr>
<tr class="odd">
<td>51</td>
<td><blockquote>
<p>Joakim</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>3</td>
</tr>
<tr class="even">
<td>31</td>
<td><blockquote>
<p>Martha</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>2</td>
</tr>
<tr class="odd">
<td>55</td>
<td><blockquote>
<p>Mark</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>2</td>
</tr>
<tr class="even">
<td>32</td>
<td><blockquote>
<p>Aaron</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>2</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 17%" />
<col style="width: 22%" />
<col style="width: 43%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th>50</th>
<th><blockquote>
<p>Enrique</p>
</blockquote></th>
<th><blockquote>
<p>Chico Buarque</p>
</blockquote></th>
<th>2</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>12</td>
<td><blockquote>
<p>Roberto</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>2</td>
</tr>
<tr class="even">
<td>52</td>
<td><blockquote>
<p>Emma</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>2</td>
</tr>
<tr class="odd">
<td>2</td>
<td><blockquote>
<p>Leonie</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>1</td>
</tr>
<tr class="even">
<td>47</td>
<td><blockquote>
<p>Lucas</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>1</td>
</tr>
</tbody>
</table>

Q10. We want to find out the most popular music Genre for each country. We determine the most popular genre as the genre with the highest amount of purchases. Write a query that returns each country along with the top Genre. For countries where the maximum number of purchases is shared return all Genres.

SELECT country_name, genre_name, total_quantity FROM (SELECT c.country AS country_name, g.name AS genre_name,SUM(il.Quantity) AS total_quantity, RANK() OVER (PARTITION BY c.country ORDER BY SUM(il.Quantity) DESC) AS rnk FROM customer c JOIN invoice i ON c.customer_id = i.customer_id JOIN
invoice_line il ON il.invoice_id = i.invoice_id JOIN track t ON il.track_id = t.track_id JOIN genre g ON t.genre_id = g.genre_id GROUP BY 1, 2) AS abc WHERE rnk = 1;

<table>
<colgroup>
<col style="width: 31%" />
<col style="width: 35%" />
<col style="width: 31%" />
<col style="width: 2%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>country_name</p>
</blockquote></th>
<th><blockquote>
<p>genre_name</p>
</blockquote></th>
<th colspan="2"><blockquote>
<p>total_quantity</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>Argentina</p>
</blockquote></td>
<td><blockquote>
<p>Rock</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Australia</p>
</blockquote></td>
<td><blockquote>
<p>Metal</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Austria</p>
</blockquote></td>
<td><blockquote>
<p>Metal</p>
</blockquote></td>
<td><blockquote>
<p>3</p>
</blockquote></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Belgium</p>
</blockquote></td>
<td><blockquote>
<p>Metal</p>
</blockquote></td>
<td><blockquote>
<p>2</p>
</blockquote></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Brazil</p>
</blockquote></td>
<td><blockquote>
<p>Alternative &amp;</p>
<p>Punk</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Canada</p>
</blockquote></td>
<td><blockquote>
<p>Alternative &amp;</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
<td></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 32%" />
<col style="width: 36%" />
<col style="width: 31%" />
</colgroup>
<thead>
<tr class="header">
<th></th>
<th><blockquote>
<p>Punk</p>
</blockquote></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>Canada</p>
</blockquote></td>
<td><blockquote>
<p>Jazz</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Chile</p>
</blockquote></td>
<td><blockquote>
<p>Latin</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Czech</p>
<p>Republic</p>
</blockquote></td>
<td><blockquote>
<p>Jazz</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Denmark</p>
</blockquote></td>
<td><blockquote>
<p>Rock</p>
</blockquote></td>
<td><blockquote>
<p>6</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Finland</p>
</blockquote></td>
<td><blockquote>
<p>Rock</p>
</blockquote></td>
<td><blockquote>
<p>5</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>France</p>
</blockquote></td>
<td><blockquote>
<p>Blues</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>France</p>
</blockquote></td>
<td><blockquote>
<p>Alternative &amp;</p>
<p>Punk</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Germany</p>
</blockquote></td>
<td><blockquote>
<p>Jazz</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Hungary</p>
</blockquote></td>
<td><blockquote>
<p>Alternative &amp;</p>
<p>Punk</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>India</p>
</blockquote></td>
<td><blockquote>
<p>Alternative &amp;</p>
<p>Punk</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>India</p>
</blockquote></td>
<td><blockquote>
<p>Latin</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Ireland</p>
</blockquote></td>
<td><blockquote>
<p>Metal</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Italy</p>
</blockquote></td>
<td><blockquote>
<p>Rock</p>
</blockquote></td>
<td><blockquote>
<p>3</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Netherlands</p>
</blockquote></td>
<td><blockquote>
<p>Blues</p>
</blockquote></td>
<td><blockquote>
<p>2</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Norway</p>
</blockquote></td>
<td><blockquote>
<p>Metal</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Norway</p>
</blockquote></td>
<td><blockquote>
<p>Alternative &amp;</p>
<p>Punk</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Norway</p>
</blockquote></td>
<td><blockquote>
<p>Rock</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Poland</p>
</blockquote></td>
<td><blockquote>
<p>Metal</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Portugal</p>
</blockquote></td>
<td><blockquote>
<p>Metal</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Portugal</p>
</blockquote></td>
<td><blockquote>
<p>Alternative &amp;</p>
<p>Punk</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Spain</p>
</blockquote></td>
<td><blockquote>
<p>Reggae</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Spain</p>
</blockquote></td>
<td><blockquote>
<p>Latin</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Sweden</p>
</blockquote></td>
<td><blockquote>
<p>Blues</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Sweden</p>
</blockquote></td>
<td><blockquote>
<p>Metal</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>United</p>
<p>Kingdom</p>
</blockquote></td>
<td><blockquote>
<p>Jazz</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>United</p>
<p>Kingdom</p>
</blockquote></td>
<td><blockquote>
<p>Alternative &amp;</p>
<p>Punk</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>United</p>
<p>Kingdom</p>
</blockquote></td>
<td><blockquote>
<p>Latin</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>United</p>
<p>Kingdom</p>
</blockquote></td>
<td><blockquote>
<p>Reggae</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>USA</p>
</blockquote></td>
<td><blockquote>
<p>Alternative &amp;</p>
<p>Punk</p>
</blockquote></td>
<td><blockquote>
<p>2</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>USA</p>
</blockquote></td>
<td><blockquote>
<p>Latin</p>
</blockquote></td>
<td><blockquote>
<p>2</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>USA</p>
</blockquote></td>
<td><blockquote>
<p>Jazz</p>
</blockquote></td>
<td><blockquote>
<p>2</p>
</blockquote></td>
</tr>
</tbody>
</table>

Q11. Write a query that determines the customer that has spent the most on music for each country. Write a query that returns the country along with the top customer and how much they spent. For countries where the top amount spent is shared, provide all customers who spent this amount.

SELECT customer_id, first_name, last_name, billing_country, total_spent FROM (SELECT c.customer_id, c.first_name, c.last_name, i.billing_country,
SUM(i.total) AS total_spent, ROW_NUMBER() OVER (PARTITION BY i.billing_country ORDER BY SUM(i.total) DESC) AS row_num FROM
invoice i JOIN customer c ON c.customer_id = i.customer_id GROUP BY 1, 2, 3, 4) AS abc WHERE row_num = 1;

<table>
<colgroup>
<col style="width: 16%" />
<col style="width: 19%" />
<col style="width: 28%" />
<col style="width: 19%" />
<col style="width: 15%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>customer_id</p>
</blockquote></th>
<th><blockquote>
<p>first_name</p>
</blockquote></th>
<th><blockquote>
<p>last_name</p>
</blockquote></th>
<th><blockquote>
<p>billing_country</p>
</blockquote></th>
<th><blockquote>
<p>total_spent</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>56</p>
</blockquote></td>
<td><blockquote>
<p>Diego</p>
</blockquote></td>
<td><blockquote>
<p>GutiÃƒÂ©rrez</p>
</blockquote></td>
<td><blockquote>
<p>Argentina</p>
</blockquote></td>
<td><blockquote>
<p>40</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>55</p>
</blockquote></td>
<td><blockquote>
<p>Mark</p>
</blockquote></td>
<td><blockquote>
<p>Taylor</p>
</blockquote></td>
<td><blockquote>
<p>Australia</p>
</blockquote></td>
<td><blockquote>
<p>82</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>7</p>
</blockquote></td>
<td><blockquote>
<p>Astrid</p>
</blockquote></td>
<td><blockquote>
<p>Gruber</p>
</blockquote></td>
<td><blockquote>
<p>Austria</p>
</blockquote></td>
<td><blockquote>
<p>70</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>8</p>
</blockquote></td>
<td><blockquote>
<p>Daan</p>
</blockquote></td>
<td><blockquote>
<p>Peeters</p>
</blockquote></td>
<td><blockquote>
<p>Belgium</p>
</blockquote></td>
<td><blockquote>
<p>61</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>13</p>
</blockquote></td>
<td><blockquote>
<p>Fernanda</p>
</blockquote></td>
<td><blockquote>
<p>Ramos</p>
</blockquote></td>
<td><blockquote>
<p>Brazil</p>
</blockquote></td>
<td><blockquote>
<p>108</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>3</p>
</blockquote></td>
<td><blockquote>
<p>FranÃƒÂ§ois</p>
</blockquote></td>
<td><blockquote>
<p>Tremblay</p>
</blockquote></td>
<td><blockquote>
<p>Canada</p>
</blockquote></td>
<td><blockquote>
<p>101</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>57</p>
</blockquote></td>
<td><blockquote>
<p>Luis</p>
</blockquote></td>
<td><blockquote>
<p>Rojas</p>
</blockquote></td>
<td><blockquote>
<p>Chile</p>
</blockquote></td>
<td><blockquote>
<p>98</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>5</p>
</blockquote></td>
<td><blockquote>
<p>FrantiÃ…Â¡ek</p>
</blockquote></td>
<td><blockquote>
<p>WichterlovÃƒÂ¡</p>
</blockquote></td>
<td><blockquote>
<p>Czech Republic</p>
</blockquote></td>
<td><blockquote>
<p>146</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>9</p>
</blockquote></td>
<td><blockquote>
<p>Kara</p>
</blockquote></td>
<td><blockquote>
<p>Nielsen</p>
</blockquote></td>
<td><blockquote>
<p>Denmark</p>
</blockquote></td>
<td><blockquote>
<p>38</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>44</p>
</blockquote></td>
<td><blockquote>
<p>Terhi</p>
</blockquote></td>
<td><blockquote>
<p>HÃƒÂ¤mÃƒÂ¤lÃƒÂ¤inen</p>
</blockquote></td>
<td><blockquote>
<p>Finland</p>
</blockquote></td>
<td><blockquote>
<p>80</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>42</p>
</blockquote></td>
<td><blockquote>
<p>Wyatt</p>
</blockquote></td>
<td><blockquote>
<p>Girard</p>
</blockquote></td>
<td><blockquote>
<p>France</p>
</blockquote></td>
<td><blockquote>
<p>101</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>37</p>
</blockquote></td>
<td><blockquote>
<p>Fynn</p>
</blockquote></td>
<td><blockquote>
<p>Zimmermann</p>
</blockquote></td>
<td><blockquote>
<p>Germany</p>
</blockquote></td>
<td><blockquote>
<p>95</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>45</p>
</blockquote></td>
<td><blockquote>
<p>Ladislav</p>
</blockquote></td>
<td><blockquote>
<p>KovÃƒÂ¡cs</p>
</blockquote></td>
<td><blockquote>
<p>Hungary</p>
</blockquote></td>
<td><blockquote>
<p>79</p>
</blockquote></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 16%" />
<col style="width: 19%" />
<col style="width: 28%" />
<col style="width: 19%" />
<col style="width: 15%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>58</p>
</blockquote></th>
<th><blockquote>
<p>Manoj</p>
</blockquote></th>
<th><blockquote>
<p>Pareek</p>
</blockquote></th>
<th><blockquote>
<p>India</p>
</blockquote></th>
<th><blockquote>
<p>113</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>46</p>
</blockquote></td>
<td><blockquote>
<p>Hugh</p>
</blockquote></td>
<td><blockquote>
<p>O'Reilly</p>
</blockquote></td>
<td><blockquote>
<p>Ireland</p>
</blockquote></td>
<td><blockquote>
<p>116</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>47</p>
</blockquote></td>
<td><blockquote>
<p>Lucas</p>
</blockquote></td>
<td><blockquote>
<p>Mancini</p>
</blockquote></td>
<td><blockquote>
<p>Italy</p>
</blockquote></td>
<td><blockquote>
<p>51</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>48</p>
</blockquote></td>
<td><blockquote>
<p>Johannes</p>
</blockquote></td>
<td><blockquote>
<p>Van der Berg</p>
</blockquote></td>
<td><blockquote>
<p>Netherlands</p>
</blockquote></td>
<td><blockquote>
<p>66</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>4</p>
</blockquote></td>
<td><blockquote>
<p>BjÃƒÂ¸rn</p>
</blockquote></td>
<td><blockquote>
<p>Hansen</p>
</blockquote></td>
<td><blockquote>
<p>Norway</p>
</blockquote></td>
<td><blockquote>
<p>73</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>49</p>
</blockquote></td>
<td><blockquote>
<p>StanisÃ…â€šaw</p>
</blockquote></td>
<td><blockquote>
<p>WÃƒÂ³jcik</p>
</blockquote></td>
<td><blockquote>
<p>Poland</p>
</blockquote></td>
<td><blockquote>
<p>77</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>34</p>
</blockquote></td>
<td><blockquote>
<p>JoÃƒÂ£o</p>
</blockquote></td>
<td><blockquote>
<p>Fernandes</p>
</blockquote></td>
<td><blockquote>
<p>Portugal</p>
</blockquote></td>
<td><blockquote>
<p>104</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>50</p>
</blockquote></td>
<td><blockquote>
<p>Enrique</p>
</blockquote></td>
<td><blockquote>
<p>MuÃƒÂ±oz</p>
</blockquote></td>
<td><blockquote>
<p>Spain</p>
</blockquote></td>
<td><blockquote>
<p>99</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>51</p>
</blockquote></td>
<td><blockquote>
<p>Joakim</p>
</blockquote></td>
<td><blockquote>
<p>Johansson</p>
</blockquote></td>
<td><blockquote>
<p>Sweden</p>
</blockquote></td>
<td><blockquote>
<p>76</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>53</p>
</blockquote></td>
<td><blockquote>
<p>Phil</p>
</blockquote></td>
<td><blockquote>
<p>Hughes</p>
</blockquote></td>
<td><blockquote>
<p>United</p>
<p>Kingdom</p>
</blockquote></td>
<td><blockquote>
<p>99</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>17</p>
</blockquote></td>
<td><blockquote>
<p>Jack</p>
</blockquote></td>
<td><blockquote>
<p>Smith</p>
</blockquote></td>
<td><blockquote>
<p>USA</p>
</blockquote></td>
<td><blockquote>
<p>99</p>
</blockquote></td>
</tr>
</tbody>
</table>

Q12. Who are the most popular artists?

SELECT COUNT(invoice_line.quantity) AS purchases, artist. name AS artist_name FROM invoice_line JOIN track ON track.track_id = invoice_line.track_id JOIN
album ON album.album_id = track.album_id JOIN artist ON artist. artistid = album.artist_id GROUP BY
2 ORDER BY 1 DESC;

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 74%" />
</colgroup>
<thead>
<tr class="header">
<th>purchases</th>
<th><blockquote>
<p>artist_name</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>124</td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
</tr>
<tr class="even">
<td>75</td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>72</td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
</tr>
<tr class="even">
<td>59</td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>43</td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
</tr>
<tr class="even">
<td>39</td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>37</td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
</tr>
<tr class="even">
<td>23</td>
<td><blockquote>
<p>Buddy Guy</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>18</td>
<td><blockquote>
<p>AntÃƒÂ´nio Carlos Jobim</p>
</blockquote></td>
</tr>
<tr class="even">
<td>15</td>
<td><blockquote>
<p>Black Label Society</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>10</td>
<td><blockquote>
<p>Caetano Veloso</p>
</blockquote></td>
</tr>
<tr class="even">
<td>8</td>
<td><blockquote>
<p>Led Zeppelin</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>7</td>
<td><blockquote>
<p>Chico Buarque</p>
</blockquote></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 74%" />
</colgroup>
<thead>
<tr class="header">
<th>4</th>
<th><blockquote>
<p>Accept</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>4</td>
<td><blockquote>
<p>Bruce Dickinson</p>
</blockquote></td>
</tr>
<tr class="even">
<td>4</td>
<td><blockquote>
<p>Billy Cobham</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>2</td>
<td><blockquote>
<p>Cidade Negra</p>
</blockquote></td>
</tr>
<tr class="even">
<td>2</td>
<td><blockquote>
<p>Chico Science &amp; NaÃƒÂ§ÃƒÂ£o</p>
<p>Zumbi</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>2</td>
<td><blockquote>
<p>Body Count</p>
</blockquote></td>
</tr>
</tbody>
</table>

Q13. Which is the most popular song?

SELECT COUNT(invoice_line.quantity) AS purchases, track.name AS song_name FROM invoice_line JOIN track ON track.track_id = invoice_line.track_id GROUP BY
2 ORDER BY 1 DESC;

<table>
<colgroup>
<col style="width: 20%" />
<col style="width: 79%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>purchases</p>
</blockquote></th>
<th><blockquote>
<p>song_name</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>13</p>
</blockquote></td>
<td><blockquote>
<p>Put The Finger On You</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>10</p>
</blockquote></td>
<td><blockquote>
<p>Night Of The Long Knives</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>9</p>
</blockquote></td>
<td><blockquote>
<p>Snowballed</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>9</p>
</blockquote></td>
<td><blockquote>
<p>Mary Jane</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>9</p>
</blockquote></td>
<td><blockquote>
<p>Behind The Wall Of Sleep</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>8</p>
</blockquote></td>
<td><blockquote>
<p>Dog Eat Dog</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>8</p>
</blockquote></td>
<td><blockquote>
<p>For Those About To Rock (We Salute You)</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>8</p>
</blockquote></td>
<td><blockquote>
<p>Deuces Are Wild</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>8</p>
</blockquote></td>
<td><blockquote>
<p>Evil Woman</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>8</p>
</blockquote></td>
<td><blockquote>
<p>Sunshine</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>7</p>
</blockquote></td>
<td><blockquote>
<p>Hell Ain't A Bad Place To Be</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>7</p>
</blockquote></td>
<td><blockquote>
<p>Breaking The Rules</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>7</p>
</blockquote></td>
<td><blockquote>
<p>Angel</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>7</p>
</blockquote></td>
<td><blockquote>
<p>The Other Side</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>7</p>
</blockquote></td>
<td><blockquote>
<p>You Oughta Know</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>7</p>
</blockquote></td>
<td><blockquote>
<p>The Unforgiven</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>7</p>
</blockquote></td>
<td><blockquote>
<p>Sleeping Village</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>7</p>
</blockquote></td>
<td><blockquote>
<p>I Know Somethin (Bout You)</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>7</p>
</blockquote></td>
<td><blockquote>
<p>Bad Boy Boogie</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>7</p>
</blockquote></td>
<td><blockquote>
<p>Overdose</p>
</blockquote></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 20%" />
<col style="width: 79%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>6</p>
</blockquote></th>
<th><blockquote>
<p>Amazing</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>6</p>
</blockquote></td>
<td><blockquote>
<p>Right Through You</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>6</p>
</blockquote></td>
<td><blockquote>
<p>Love In An Elevator</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>6</p>
</blockquote></td>
<td><blockquote>
<p>Confusion</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>6</p>
</blockquote></td>
<td><blockquote>
<p>Inject The Venom</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>6</p>
</blockquote></td>
<td><blockquote>
<p>Evil Walks</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>6</p>
</blockquote></td>
<td><blockquote>
<p>Spellbound</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>6</p>
</blockquote></td>
<td><blockquote>
<p>All I Really Want</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>6</p>
</blockquote></td>
<td><blockquote>
<p>Perfect</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>6</p>
</blockquote></td>
<td><blockquote>
<p>Forgiven</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>6</p>
</blockquote></td>
<td><blockquote>
<p>You Learn</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>6</p>
</blockquote></td>
<td><blockquote>
<p>Wake Up</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>6</p>
</blockquote></td>
<td><blockquote>
<p>Hypnotize</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>6</p>
</blockquote></td>
<td><blockquote>
<p>Whole Lotta Rosie</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>6</p>
</blockquote></td>
<td><blockquote>
<p>Problem Child</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>6</p>
</blockquote></td>
<td><blockquote>
<p>Bleed The Freak</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>6</p>
</blockquote></td>
<td><blockquote>
<p>Dude (Looks Like A Lady)</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>6</p>
</blockquote></td>
<td><blockquote>
<p>Eat The Rich</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>6</p>
</blockquote></td>
<td><blockquote>
<p>What It Takes</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>5</p>
</blockquote></td>
<td><blockquote>
<p>Sad But True</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>5</p>
</blockquote></td>
<td><blockquote>
<p>Wherever I May Roam</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>5</p>
</blockquote></td>
<td><blockquote>
<p>Exploder</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>5</p>
</blockquote></td>
<td><blockquote>
<p>C.O.D.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>5</p>
</blockquote></td>
<td><blockquote>
<p>Head Over Feet</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>5</p>
</blockquote></td>
<td><blockquote>
<p>Ironic</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>5</p>
</blockquote></td>
<td><blockquote>
<p>Not The Doctor</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>5</p>
</blockquote></td>
<td><blockquote>
<p>Let There Be Rock</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>5</p>
</blockquote></td>
<td><blockquote>
<p>Cryin'</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>5</p>
</blockquote></td>
<td><blockquote>
<p>We Die Young</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>5</p>
</blockquote></td>
<td><blockquote>
<p>Enter Sandman</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>5</p>
</blockquote></td>
<td><blockquote>
<p>N.I.B.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>5</p>
</blockquote></td>
<td><blockquote>
<p>Creeping Death</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>5</p>
</blockquote></td>
<td><blockquote>
<p>Real Thing</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>4</p>
</blockquote></td>
<td><blockquote>
<p>I Can't Remember</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>4</p>
</blockquote></td>
<td><blockquote>
<p>Let's Get It Up</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>4</p>
</blockquote></td>
<td><blockquote>
<p>Cochise</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>4</p>
</blockquote></td>
<td><blockquote>
<p>Hand In My Pocket</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>4</p>
</blockquote></td>
<td><blockquote>
<p>You Oughta Know (Alternate)</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>4</p>
</blockquote></td>
<td><blockquote>
<p>Crazy</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>4</p>
</blockquote></td>
<td><blockquote>
<p>Warning</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>4</p>
</blockquote></td>
<td><blockquote>
<p>Go Down</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>4</p>
</blockquote></td>
<td><blockquote>
<p>Janie's Got A Gun</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>4</p>
</blockquote></td>
<td><blockquote>
<p>Sea Of Sorrow</p>
</blockquote></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 20%" />
<col style="width: 79%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>4</p>
</blockquote></th>
<th><blockquote>
<p>Blind Man</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>4</p>
</blockquote></td>
<td><blockquote>
<p>It Ain't Like That</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>4</p>
</blockquote></td>
<td><blockquote>
<p>Harvester Of Sorrow</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>4</p>
</blockquote></td>
<td><blockquote>
<p>The Wizard</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>4</p>
</blockquote></td>
<td><blockquote>
<p>Man In The Box</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>3</p>
</blockquote></td>
<td><blockquote>
<p>Keep It To Myself (Aka Keep It To Yourself)</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>3</p>
</blockquote></td>
<td><blockquote>
<p>Put You Down</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>3</p>
</blockquote></td>
<td><blockquote>
<p>Doesn't Remind Me</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>3</p>
</blockquote></td>
<td><blockquote>
<p>MeditaÃƒÂ§ÃƒÂ£o</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>3</p>
</blockquote></td>
<td><blockquote>
<p>When My Left Eye Jumps</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>3</p>
</blockquote></td>
<td><blockquote>
<p>Welcome Home (Sanitarium)</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>3</p>
</blockquote></td>
<td><blockquote>
<p>Balls to the Wall</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>3</p>
</blockquote></td>
<td><blockquote>
<p>Por Causa De VocÃƒÂª</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>3</p>
</blockquote></td>
<td><blockquote>
<p>Livin' On The Edge</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>3</p>
</blockquote></td>
<td><blockquote>
<p>Talkin' 'Bout Women Obviously</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>3</p>
</blockquote></td>
<td><blockquote>
<p>Love, Hate, Love</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>3</p>
</blockquote></td>
<td><blockquote>
<p>Let Me Love You Baby</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>3</p>
</blockquote></td>
<td><blockquote>
<p>Master Of Puppets</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>Stone Crazy</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>I am the Highway</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>You Shook Me</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>Like A Bird</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>Getaway Car</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>Show Me How to Live</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>What You Are</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>Like a Stone</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>Shadow on the Sun</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>Bring'em Back Alive</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>Do what cha wanna</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>The Curse</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>All For You</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>Carolina</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>Canta, Canta Mais</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>The Real Problem</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>Pretty Baby</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>Leave My Girl Alone</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>My Time After Awhile</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>Blood In The Wall</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>A.N.D.R.O.T.A.Z.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>Corcovado (Quiet Nights Of Quiet Stars)</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Prenda Minha</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>The Worm</p>
</blockquote></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 20%" />
<col style="width: 79%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>1</p>
</blockquote></th>
<th><blockquote>
<p>Chemical Wedding</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Dandelion</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Moon germs</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>You Shook Me(2)</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Gasoline</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Set It Off</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Light My Way</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>The Last Remaining Light</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Dazed and Confused</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>A Cor Do Sol</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Travelling Riverside Blues</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>O Que SerÃƒÂ¡ (Ãƒâ‚¬ Flor Da Terra)</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Sozinho (Hitmakers Classic Radio Edit)</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Out Of Exile</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>King In Crimson</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>What is and Should Never Be</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>#1 Zero</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>DrÃƒÂ£o</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Maracatu AtÃƒÂ´mico [Trip Hop]</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>The pleasant pheasant</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>First Time I Met The Blues</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>She Suits Me To A Tee</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Too Many Ways (Alternate)</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Princess of the Dawn</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Samba De Orly</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>13 Years Of Grief</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Essa MoÃƒÂ§a Ta Diferente</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Super Terrorizer</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Lost My Better Half</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Vida Boa</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Intro/ Low Down</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Enquanto O Mundo Explode</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>I Can't Quit You Baby(2)</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>A Sombra Da Maldade</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Killing Floor</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Minha Historia</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Somethin' Else</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Bored To Tears</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Gates Of Urizen</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>No More Tears</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Odara</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Desafinado</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Garota De Ipanema</p>
</blockquote></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 20%" />
<col style="width: 79%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>1</p>
</blockquote></th>
<th><blockquote>
<p>Samba De Uma Nota SÃƒÂ³ (One Note Samba)</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Ligia</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Fotografia</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Dindi (Dindi)</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Se Todos Fossem Iguais A VocÃƒÂª</p>
<p>(Instrumental)</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Falando De Amor</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Angela</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Outra Vez</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>O Boto (BÃƒÂ´to)</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Sozinho (CaÃƒÂªdrum 'n' Bass)</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Drown Me Slowly</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Vai Passar</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Born To Booze</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Terra</p>
</blockquote></td>
</tr>
</tbody>
</table>

Q14. What are the average prices of different types of music?

SELECT genre,ROUND(AVG(total_spent)) AS total_spent FROM (SELECT genre.name AS genre, SUM(total) AS total_spent FROM invoice JOIN invoice_line ON invoice.invoice_id = invoice_line.invoice_id JOIN track ON track.track_id = invoice_line.track_id JOIN genre ON genre.genre_id = track.genre_id GROUP BY 1) AS abc GROUP BY genre;

<table>
<colgroup>
<col style="width: 57%" />
<col style="width: 42%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>genre</p>
</blockquote></th>
<th><blockquote>
<p>total_spent</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>Reggae</p>
</blockquote></td>
<td><blockquote>
<p>19</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Alternative &amp;</p>
<p>Punk</p>
</blockquote></td>
<td><blockquote>
<p>100</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Latin</p>
</blockquote></td>
<td><blockquote>
<p>146</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Blues</p>
</blockquote></td>
<td><blockquote>
<p>227</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Jazz</p>
</blockquote></td>
<td><blockquote>
<p>259</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Metal</p>
</blockquote></td>
<td><blockquote>
<p>729</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Rock</p>
</blockquote></td>
<td><blockquote>
<p>3531</p>
</blockquote></td>
</tr>
</tbody>
</table>

Q15. What are the most popular countries for music purchases?

SELECT COUNT(invoice_line.quantity) AS purchases, customer.country FROM invoice_line JOIN invoice ON invoice.invoice_id = invoice_line.invoice_id JOIN
customer ON customer.customer_id = invoice.customer_id GROUP BY country ORDER BY purchases DESC;

<table>
<colgroup>
<col style="width: 42%" />
<col style="width: 57%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>purchases</p>
</blockquote></th>
<th><blockquote>
<p>country</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>1051</p>
</blockquote></td>
<td><blockquote>
<p>USA</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>541</p>
</blockquote></td>
<td><blockquote>
<p>Canada</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>393</p>
</blockquote></td>
<td><blockquote>
<p>France</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>338</p>
</blockquote></td>
<td><blockquote>
<p>Germany</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>322</p>
</blockquote></td>
<td><blockquote>
<p>Brazil</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>276</p>
</blockquote></td>
<td><blockquote>
<p>Czech</p>
<p>Republic</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>248</p>
</blockquote></td>
<td><blockquote>
<p>United</p>
<p>Kingdom</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>187</p>
</blockquote></td>
<td><blockquote>
<p>Portugal</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>185</p>
</blockquote></td>
<td><blockquote>
<p>India</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>116</p>
</blockquote></td>
<td><blockquote>
<p>Ireland</p>
</blockquote></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 42%" />
<col style="width: 57%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>99</p>
</blockquote></th>
<th><blockquote>
<p>Spain</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>98</p>
</blockquote></td>
<td><blockquote>
<p>Chile</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>82</p>
</blockquote></td>
<td><blockquote>
<p>Australia</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>80</p>
</blockquote></td>
<td><blockquote>
<p>Finland</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>79</p>
</blockquote></td>
<td><blockquote>
<p>Hungary</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>77</p>
</blockquote></td>
<td><blockquote>
<p>Poland</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>76</p>
</blockquote></td>
<td><blockquote>
<p>Sweden</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>73</p>
</blockquote></td>
<td><blockquote>
<p>Norway</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>70</p>
</blockquote></td>
<td><blockquote>
<p>Austria</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>66</p>
</blockquote></td>
<td><blockquote>
<p>Netherlands</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>61</p>
</blockquote></td>
<td><blockquote>
<p>Belgium</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>51</p>
</blockquote></td>
<td><blockquote>
<p>Italy</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>40</p>
</blockquote></td>
<td><blockquote>
<p>Argentina</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>38</p>
</blockquote></td>
<td><blockquote>
<p>Denmark</p>
</blockquote></td>
</tr>
</tbody>
</table>

Digital Music Store SQL Case Study

Q1. Who is the senior most employee based on job title?

SELECT * FROM employee ORDER BY levels DESC LIMIT 1;

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 11%" />
<col style="width: 11%" />
<col style="width: 20%" />
<col style="width: 11%" />
<col style="width: 7%" />
<col style="width: 21%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>employee_id</p>
</blockquote></th>
<th><blockquote>
<p>last_name</p>
</blockquote></th>
<th><blockquote>
<p>first_name</p>
</blockquote></th>
<th><blockquote>
<p>title</p>
</blockquote></th>
<th><blockquote>
<p>reports_to</p>
</blockquote></th>
<th><blockquote>
<p>levels</p>
</blockquote></th>
<th><blockquote>
<p>birthdate</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Adams</p>
</blockquote></td>
<td><blockquote>
<p>Andrew</p>
</blockquote></td>
<td><blockquote>
<p>General Manager</p>
</blockquote></td>
<td><blockquote>
<p>9</p>
</blockquote></td>
<td><blockquote>
<p>L6</p>
</blockquote></td>
<td><blockquote>
<p>18-02-1962 00:00</p>
</blockquote></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 18%" />
<col style="width: 21%" />
<col style="width: 10%" />
<col style="width: 6%" />
<col style="width: 8%" />
<col style="width: 12%" />
<col style="width: 21%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>hire_date</p>
</blockquote></th>
<th><blockquote>
<p>address</p>
</blockquote></th>
<th><blockquote>
<p>city</p>
</blockquote></th>
<th><blockquote>
<p>state</p>
</blockquote></th>
<th><blockquote>
<p>country</p>
</blockquote></th>
<th><blockquote>
<p>postal_code</p>
</blockquote></th>
<th><blockquote>
<p>phone</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>14-08-2016 00:00</p>
</blockquote></td>
<td><blockquote>
<p>11120 Jasper Ave NW</p>
</blockquote></td>
<td><blockquote>
<p>Edmonton</p>
</blockquote></td>
<td><blockquote>
<p>AB</p>
</blockquote></td>
<td><blockquote>
<p>Canada</p>
</blockquote></td>
<td><blockquote>
<p>T5K 2N1</p>
</blockquote></td>
<td><blockquote>
<p>+1 (780) 428-9482</p>
</blockquote></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 46%" />
<col style="width: 53%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>fax</p>
</blockquote></th>
<th><blockquote>
<p>email</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>+1 (780) 428-3457</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:andrew@chinookcorp.com">andrew@chinookcorp.com</a></p>
</blockquote></td>
</tr>
</tbody>
</table>

Q2. Which countries have the most Invoices?

SELECT billing_country, COUNT(invoice_id) AS invoice_count FROM invoice GROUP BY billing_country ORDER BY invoice_count DESC;

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 49%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>billing_country</p>
</blockquote></th>
<th>COUNT(invoice_id)</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>USA</p>
</blockquote></td>
<td>131</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Canada</p>
</blockquote></td>
<td>76</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Brazil</p>
</blockquote></td>
<td>61</td>
</tr>
<tr class="even">
<td><blockquote>
<p>France</p>
</blockquote></td>
<td>50</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Germany</p>
</blockquote></td>
<td>41</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Czech Republic</p>
</blockquote></td>
<td>30</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Portugal</p>
</blockquote></td>
<td>29</td>
</tr>
<tr class="even">
<td><blockquote>
<p>United Kingdom</p>
</blockquote></td>
<td>28</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>India</p>
</blockquote></td>
<td>21</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Ireland</p>
</blockquote></td>
<td>13</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Chile</p>
</blockquote></td>
<td>13</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Finland</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Spain</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Poland</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Denmark</p>
</blockquote></td>
<td>10</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 49%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>Australia</p>
</blockquote></th>
<th>10</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>Hungary</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Sweden</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Netherlands</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Norway</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Italy</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Austria</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Belgium</p>
</blockquote></td>
<td>7</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Argentina</p>
</blockquote></td>
<td>5</td>
</tr>
</tbody>
</table>

Q3. What are top 3 values of total invoice?

SELECT * FROM invoice ORDER BY total DESC LIMIT 3;

<table>
<colgroup>
<col style="width: 12%" />
<col style="width: 14%" />
<col style="width: 14%" />
<col style="width: 27%" />
<col style="width: 15%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>invoice_id</p>
</blockquote></th>
<th><blockquote>
<p>customer_id</p>
</blockquote></th>
<th><blockquote>
<p>invoice_date</p>
</blockquote></th>
<th><blockquote>
<p>billing_address</p>
</blockquote></th>
<th><blockquote>
<p>billing_city</p>
</blockquote></th>
<th><blockquote>
<p>billing_country</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>183</p>
</blockquote></td>
<td><blockquote>
<p>42</p>
</blockquote></td>
<td><blockquote>
<p>09-02-2018</p>
</blockquote></td>
<td><blockquote>
<p>9, Place Louis Barthou</p>
</blockquote></td>
<td><blockquote>
<p>Bordeaux</p>
</blockquote></td>
<td><blockquote>
<p>France</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>92</p>
</blockquote></td>
<td><blockquote>
<p>32</p>
</blockquote></td>
<td><blockquote>
<p>02-07-2017</p>
</blockquote></td>
<td><blockquote>
<p>696 Osborne Street</p>
</blockquote></td>
<td><blockquote>
<p>Winnipeg</p>
</blockquote></td>
<td><blockquote>
<p>Canada</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>31</p>
</blockquote></td>
<td><blockquote>
<p>3</p>
</blockquote></td>
<td><blockquote>
<p>21-02-2017</p>
</blockquote></td>
<td><blockquote>
<p>1498 rue BÃƒÂ©langer</p>
</blockquote></td>
<td><blockquote>
<p>MontrÃƒÂ©al</p>
</blockquote></td>
<td><blockquote>
<p>Canada</p>
</blockquote></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 16%" />
<col style="width: 33%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>total</p>
</blockquote></th>
<th><blockquote>
<p>billing_state</p>
</blockquote></th>
<th><blockquote>
<p>billing_postal_code</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>24</p>
</blockquote></td>
<td><blockquote>
<p>None</p>
</blockquote></td>
<td><blockquote>
<p>33000</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>20</p>
</blockquote></td>
<td><blockquote>
<p>MB</p>
</blockquote></td>
<td><blockquote>
<p>R3L 2B9</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>20</p>
</blockquote></td>
<td><blockquote>
<p>QC</p>
</blockquote></td>
<td><blockquote>
<p>H2G 1A7</p>
</blockquote></td>
</tr>
</tbody>
</table>

Q4. Which city has the best customers? We would like to throw a promotional Music Festival in the city we made the most money. Write a query that returns one city that has the highest sum of invoice totals. Return both the city name & sum of all invoice totals.

SELECT billing_country, SUM(total) AS total FROM invoice GROUP BY billing_country ORDER BY total DESC LIMIT 1;

<table>
<colgroup>
<col style="width: 70%" />
<col style="width: 29%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>billing_country</p>
</blockquote></th>
<th><blockquote>
<p>total</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>USA</p>
</blockquote></td>
<td><blockquote>
<p>1051</p>
</blockquote></td>
</tr>
</tbody>
</table>

Q5. Who is the best customer? The customer who has spent the most money will be declared the best customer. Write a query that returns the person who has spent the most money.

SELECT c.first_name, c.last_name, SUM(i.total) AS total FROM customer c JOIN invoice i ON c.customer_id = i.customer_id GROUP BY
c.first_name, c.last_name ORDER BY total DESC LIMIT 1;

<table style="width:100%;">
<colgroup>
<col style="width: 38%" />
<col style="width: 43%" />
<col style="width: 17%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>first_name</p>
</blockquote></th>
<th><blockquote>
<p>last_name</p>
</blockquote></th>
<th><blockquote>
<p>total</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>FrantiÃ…Â¡ek</p>
</blockquote></td>
<td><blockquote>
<p>WichterlovÃƒÂ¡</p>
</blockquote></td>
<td><blockquote>
<p>146</p>
</blockquote></td>
</tr>
</tbody>
</table>

Q6. Write query to return the email, first name, last name, & Genre of all Rock Music listeners. Return your list ordered alphabetically by email starting with A

SELECT DISTINCT c.last_name, c.first_name, c.email FROM customer c JOIN invoice i ON c.customer_id = i.customer_id JOIN invoice_line il
ON i.invoice_id = il.invoice_id WHERE il.track_id IN ( SELECT track_id FROM track JOIN genre ON genre.genre_id = track.genre_id WHERE genre.name LIKE 'Rock')
ORDER BY c.email;

<table>
<colgroup>
<col style="width: 32%" />
<col style="width: 22%" />
<col style="width: 45%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>last_name</p>
</blockquote></th>
<th><blockquote>
<p>first_name</p>
</blockquote></th>
<th><blockquote>
<p>email</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>Mitchell</p>
</blockquote></td>
<td><blockquote>
<p>Aaron</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:aaronmitchell@yahoo.ca">aaronmitchell@yahoo.ca</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Rocha</p>
</blockquote></td>
<td><blockquote>
<p>Alexandre</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:alero@uol.com.br">alero@uol.com.br</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Gruber</p>
</blockquote></td>
<td><blockquote>
<p>Astrid</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:astrid.gruber@apple.at">astrid.gruber@apple.at</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Hansen</p>
</blockquote></td>
<td><blockquote>
<p>BjÃƒÂ¸rn</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:bjorn.hansen@yahoo.no">bjorn.hansen@yahoo.no</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Bernard</p>
</blockquote></td>
<td><blockquote>
<p>Camille</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:camille.bernard@yahoo.fr">camille.bernard@yahoo.fr</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Peeters</p>
</blockquote></td>
<td><blockquote>
<p>Daan</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:daan_peeters@apple.be">daan_peeters@apple.be</a></p>
</blockquote></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 32%" />
<col style="width: 22%" />
<col style="width: 45%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>GutiÃƒÂ©rrez</p>
</blockquote></th>
<th><blockquote>
<p>Diego</p>
</blockquote></th>
<th><blockquote>
<p><a href="mailto:diego.gutierrez@yahoo.ar">diego.gutierrez@yahoo.ar</a></p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>Miller</p>
</blockquote></td>
<td><blockquote>
<p>Dan</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:dmiller@comcast.com">dmiller@comcast.com</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Lefebvre</p>
</blockquote></td>
<td><blockquote>
<p>Dominique</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:dominiquelefebvre@gmail.com">dominiquelefebvre@gmail.com</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Francis</p>
</blockquote></td>
<td><blockquote>
<p>Edward</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:edfrancis@yachoo.ca">edfrancis@yachoo.ca</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Martins</p>
</blockquote></td>
<td><blockquote>
<p>Eduardo</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:eduardo@woodstock.com.br">eduardo@woodstock.com.br</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Sullivan</p>
</blockquote></td>
<td><blockquote>
<p>Ellie</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:ellie.sullivan@shaw.ca">ellie.sullivan@shaw.ca</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Jones</p>
</blockquote></td>
<td><blockquote>
<p>Emma</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:emma_jones@hotmail.com">emma_jones@hotmail.com</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>MuÃƒÂ±oz</p>
</blockquote></td>
<td><blockquote>
<p>Enrique</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:enrique_munoz@yahoo.es">enrique_munoz@yahoo.es</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Ramos</p>
</blockquote></td>
<td><blockquote>
<p>Fernanda</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:fernadaramos4@uol.com.br">fernadaramos4@uol.com.br</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Harris</p>
</blockquote></td>
<td><blockquote>
<p>Frank</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:fharris@google.com">fharris@google.com</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Ralston</p>
</blockquote></td>
<td><blockquote>
<p>Frank</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:fralston@gmail.com">fralston@gmail.com</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>WichterlovÃƒÂ¡</p>
</blockquote></td>
<td><blockquote>
<p>FrantiÃ…Â¡ek</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:frantisekw@jetbrains.com">frantisekw@jetbrains.com</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Tremblay</p>
</blockquote></td>
<td><blockquote>
<p>FranÃƒÂ§ois</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:ftremblay@gmail.com">ftremblay@gmail.com</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Zimmermann</p>
</blockquote></td>
<td><blockquote>
<p>Fynn</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:fzimmermann@yahoo.de">fzimmermann@yahoo.de</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Schneider</p>
</blockquote></td>
<td><blockquote>
<p>Hannah</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:hannah.schneider@yahoo.de">hannah.schneider@yahoo.de</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>HolÃƒÂ½</p>
</blockquote></td>
<td><blockquote>
<p>Helena</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:hholy@gmail.com">hholy@gmail.com</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Leacock</p>
</blockquote></td>
<td><blockquote>
<p>Heather</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:hleacock@gmail.com">hleacock@gmail.com</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>O'Reilly</p>
</blockquote></td>
<td><blockquote>
<p>Hugh</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:hughoreilly@apple.ie">hughoreilly@apple.ie</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Mercier</p>
</blockquote></td>
<td><blockquote>
<p>Isabelle</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:isabelle_mercier@apple.fr">isabelle_mercier@apple.fr</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Smith</p>
</blockquote></td>
<td><blockquote>
<p>Jack</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:jacksmith@microsoft.com">jacksmith@microsoft.com</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Peterson</p>
</blockquote></td>
<td><blockquote>
<p>Jennifer</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:jenniferp@rogers.ca">jenniferp@rogers.ca</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Fernandes</p>
</blockquote></td>
<td><blockquote>
<p>JoÃƒÂ£o</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:jfernandes@yahoo.pt">jfernandes@yahoo.pt</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Johansson</p>
</blockquote></td>
<td><blockquote>
<p>Joakim</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:joakim.johansson@yahoo.se">joakim.johansson@yahoo.se</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Van der Berg</p>
</blockquote></td>
<td><blockquote>
<p>Johannes</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:johavanderberg@yahoo.nl">johavanderberg@yahoo.nl</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Gordon</p>
</blockquote></td>
<td><blockquote>
<p>John</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:johngordon22@yahoo.com">johngordon22@yahoo.com</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Barnett</p>
</blockquote></td>
<td><blockquote>
<p>Julia</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:jubarnett@gmail.com">jubarnett@gmail.com</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Chase</p>
</blockquote></td>
<td><blockquote>
<p>Kathy</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:kachase@hotmail.com">kachase@hotmail.com</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Nielsen</p>
</blockquote></td>
<td><blockquote>
<p>Kara</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:kara.nielsen@jubii.dk">kara.nielsen@jubii.dk</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>KovÃƒÂ¡cs</p>
</blockquote></td>
<td><blockquote>
<p>Ladislav</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:ladislav_kovacs@apple.hu">ladislav_kovacs@apple.hu</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>KÃƒÂ¶hler</p>
</blockquote></td>
<td><blockquote>
<p>Leonie</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:leonekohler@surfeu.de">leonekohler@surfeu.de</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Mancini</p>
</blockquote></td>
<td><blockquote>
<p>Lucas</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:lucas.mancini@yahoo.it">lucas.mancini@yahoo.it</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Rojas</p>
</blockquote></td>
<td><blockquote>
<p>Luis</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:luisrojas@yahoo.cl">luisrojas@yahoo.cl</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Pareek</p>
</blockquote></td>
<td><blockquote>
<p>Manoj</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:manoj.pareek@rediff.com">manoj.pareek@rediff.com</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Dubois</p>
</blockquote></td>
<td><blockquote>
<p>Marc</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:marc.dubois@hotmail.com">marc.dubois@hotmail.com</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Taylor</p>
</blockquote></td>
<td><blockquote>
<p>Mark</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:mark.taylor@yahoo.au">mark.taylor@yahoo.au</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Silk</p>
</blockquote></td>
<td><blockquote>
<p>Martha</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:marthasilk@gmail.com">marthasilk@gmail.com</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Sampaio</p>
</blockquote></td>
<td><blockquote>
<p>Madalena</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:masampaio@sapo.pt">masampaio@sapo.pt</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Philips</p>
</blockquote></td>
<td><blockquote>
<p>Mark</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:mphilips12@shaw.ca">mphilips12@shaw.ca</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>SchrÃƒÂ¶der</p>
</blockquote></td>
<td><blockquote>
<p>Niklas</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:nschroder@surfeu.de">nschroder@surfeu.de</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Gray</p>
</blockquote></td>
<td><blockquote>
<p>Patrick</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:patrick.gray@aol.com">patrick.gray@aol.com</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Hughes</p>
</blockquote></td>
<td><blockquote>
<p>Phil</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:phil.hughes@gmail.com">phil.hughes@gmail.com</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Cunningham</p>
</blockquote></td>
<td><blockquote>
<p>Richard</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:ricunningham@hotmail.com">ricunningham@hotmail.com</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Mishra</p>
</blockquote></td>
<td><blockquote>
<p>Rishabh</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:rishabh_mishra@yahoo.in">rishabh_mishra@yahoo.in</a></p>
</blockquote></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 32%" />
<col style="width: 22%" />
<col style="width: 45%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>Brown</p>
</blockquote></th>
<th><blockquote>
<p>Robert</p>
</blockquote></th>
<th><blockquote>
<p><a href="mailto:robbrown@shaw.ca">robbrown@shaw.ca</a></p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>Almeida</p>
</blockquote></td>
<td><blockquote>
<p>Roberto</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:roberto.almeida@riotur.gov.br">roberto.almeida@riotur.gov.br</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>WÃƒÂ³jcik</p>
</blockquote></td>
<td><blockquote>
<p>StanisÃ…â€šaw</p>
</blockquote></td>
<td><blockquote>
<p>stanisÃ…â€šaw.wÃƒÂ<a href="mailto:jcik@wp.pl">³jci</a>k<a href="mailto:jcik@wp.pl">@wp.pl</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Murray</p>
</blockquote></td>
<td><blockquote>
<p>Steve</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:steve.murray@yahoo.uk">steve.murray@yahoo.uk</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>HÃƒÂ¤mÃƒÂ¤lÃƒÂ¤inen</p>
</blockquote></td>
<td><blockquote>
<p>Terhi</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:terhi.hamalainen@apple.fi">terhi.hamalainen@apple.fi</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Goyer</p>
</blockquote></td>
<td><blockquote>
<p>Tim</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:tgoyer@apple.com">tgoyer@apple.com</a></p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Stevens</p>
</blockquote></td>
<td><blockquote>
<p>Victor</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:vstevens@yahoo.com">vstevens@yahoo.com</a></p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Girard</p>
</blockquote></td>
<td><blockquote>
<p>Wyatt</p>
</blockquote></td>
<td><blockquote>
<p><a href="mailto:wyatt.girard@yahoo.fr">wyatt.girard@yahoo.fr</a></p>
</blockquote></td>
</tr>
</tbody>
</table>

Q7. Let's invite the artists who have written the most rock music in our dataset. Write a query that returns the Artist name and total track count of the top 10 rock bands

SELECT a.name, COUNT(t.track_id) AS total_count FROM artist a JOIN album al ON a.ArtistID = al.Artist_ID JOIN track t ON al.album_id = t.album_id WHERE t.genre_id IN ( SELECT genre_id FROM genre WHERE name LIKE 'Rock' ) GROUP BY a.name ORDER BY total_count DESC LIMIT 10;

<table>
<colgroup>
<col style="width: 74%" />
<col style="width: 25%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>name</p>
</blockquote></th>
<th>total_count</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>18</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>14</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>13</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>13</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>12</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Led Zeppelin</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Frank Zappa &amp; Captain Beefheart</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Accept</p>
</blockquote></td>
<td>2</td>
</tr>
</tbody>
</table>

# Q8. Return all the track names that have a song length longer than the average song length. Return the Name and Milliseconds for each track. Order by the song length with the longest songs listed first

SELECT name, milliseconds FROM track WHERE milliseconds \> ( SELECT AVG(milliseconds) FROM track ) ORDER BY milliseconds DESC;

<table>
<colgroup>
<col style="width: 73%" />
<col style="width: 26%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>name</p>
</blockquote></th>
<th>milliseconds</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>Advance Romance</p>
</blockquote></td>
<td>677694</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Sleeping Village</p>
</blockquote></td>
<td>644571</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>You Shook Me(2)</p>
</blockquote></td>
<td>619467</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Talkin' 'Bout Women Obviously</p>
</blockquote></td>
<td>589531</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Stratus</p>
</blockquote></td>
<td>582086</td>
</tr>
<tr class="even">
<td><blockquote>
<p>No More Tears</p>
</blockquote></td>
<td>555075</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>The Alchemist</p>
</blockquote></td>
<td>509413</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Book Of Thel</p>
</blockquote></td>
<td>494393</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>You Oughta Know (Alternate)</p>
</blockquote></td>
<td>491885</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Terra</p>
</blockquote></td>
<td>482429</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Snoopy's search-Red baron</p>
</blockquote></td>
<td>456071</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Sozinho (Hitmakers Classic Mix)</p>
</blockquote></td>
<td>436636</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Master Of Puppets</p>
</blockquote></td>
<td>436453</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Stone Crazy</p>
</blockquote></td>
<td>433397</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Snowblind</p>
</blockquote></td>
<td>420022</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Computadores Fazem Arte</p>
</blockquote></td>
<td>404323</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Jerusalem</p>
</blockquote></td>
<td>402390</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Dazed and Confused</p>
</blockquote></td>
<td>401920</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>The Winner Loses</p>
</blockquote></td>
<td>392254</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Love, Hate, Love</p>
</blockquote></td>
<td>387134</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>ConstruÃƒÂ§ÃƒÂ£o / Deus Lhe Pague</p>
</blockquote></td>
<td>383059</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>382066</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Livin' On The Edge</p>
</blockquote></td>
<td>381231</td>
</tr>
<tr class="even">
<td><blockquote>
<p>I Can't Quit You Baby(2)</p>
</blockquote></td>
<td>380551</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Princess of the Dawn</p>
</blockquote></td>
<td>375418</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Harvester Of Sorrow</p>
</blockquote></td>
<td>374543</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Momma's Gotta Die Tonight</p>
</blockquote></td>
<td>371539</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Vai Passar</p>
</blockquote></td>
<td>369763</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Wherever I May Roam</p>
</blockquote></td>
<td>369345</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Overdose</p>
</blockquote></td>
<td>369319</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 73%" />
<col style="width: 26%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>N.I.B.</p>
</blockquote></th>
<th>368770</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>O Boto (BÃƒÂ´to)</p>
</blockquote></td>
<td>366837</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Let There Be Rock</p>
</blockquote></td>
<td>366654</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>The Begining... At Last</p>
</blockquote></td>
<td>365662</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Carolina Hard-Core Ecstasy</p>
</blockquote></td>
<td>359680</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>World Of Trouble</p>
</blockquote></td>
<td>359157</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Trupets Of Jericho</p>
</blockquote></td>
<td>359131</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Amazing</p>
</blockquote></td>
<td>356519</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Welcome Home (Sanitarium)</p>
</blockquote></td>
<td>350197</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>There Goes The Neighborhood</p>
</blockquote></td>
<td>350171</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Sea Of Sorrow</p>
</blockquote></td>
<td>349831</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Confusion</p>
</blockquote></td>
<td>344163</td>
</tr>
<tr class="even">
<td><blockquote>
<p>For Those About To Rock (We Salute</p>
<p>You)</p>
</blockquote></td>
<td>343719</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Shadow on the Sun</p>
</blockquote></td>
<td>343457</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Balls to the Wall</p>
</blockquote></td>
<td>342562</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Machine Men</p>
</blockquote></td>
<td>341655</td>
</tr>
<tr class="even">
<td><blockquote>
<p>I am the Highway</p>
</blockquote></td>
<td>334942</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Muffin Man</p>
</blockquote></td>
<td>332878</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Go Down</p>
</blockquote></td>
<td>331180</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Janie's Got A Gun</p>
</blockquote></td>
<td>330736</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Bring'em Back Alive</p>
</blockquote></td>
<td>329534</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Sozinho (CaÃƒÂªdrum 'n' Bass)</p>
</blockquote></td>
<td>328071</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Problem Child</p>
</blockquote></td>
<td>325041</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Whole Lotta Rosie</p>
</blockquote></td>
<td>323761</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Intro/ Low Down</p>
</blockquote></td>
<td>323683</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>The Unforgiven</p>
</blockquote></td>
<td>322925</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Love In An Elevator</p>
</blockquote></td>
<td>321828</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Super Terrorizer</p>
</blockquote></td>
<td>319373</td>
</tr>
<tr class="even">
<td><blockquote>
<p>The pleasant pheasant</p>
</blockquote></td>
<td>318066</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Body Count</p>
</blockquote></td>
<td>317936</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Geni E O Zepelim</p>
</blockquote></td>
<td>317570</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>The Last Remaining Light</p>
</blockquote></td>
<td>317492</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Crazy</p>
</blockquote></td>
<td>316656</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>You Shook Me</p>
</blockquote></td>
<td>315951</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Travelling Riverside Blues</p>
</blockquote></td>
<td>312032</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Noite Do Prazer</p>
</blockquote></td>
<td>311353</td>
</tr>
<tr class="even">
<td><blockquote>
<p>What It Takes</p>
</blockquote></td>
<td>310622</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>The Curse</p>
</blockquote></td>
<td>309786</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Cryin'</p>
</blockquote></td>
<td>309263</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Creeping Death</p>
</blockquote></td>
<td>308035</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Angel</p>
</blockquote></td>
<td>307617</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Banditismo Por Uma Questa</p>
</blockquote></td>
<td>307095</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 73%" />
<col style="width: 26%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>Extra</p>
</blockquote></th>
<th>304352</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>Light My Way</p>
</blockquote></td>
<td>303595</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Stronger Than Death</p>
</blockquote></td>
<td>300747</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Voodoo</p>
</blockquote></td>
<td>300721</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Forgiven</p>
</blockquote></td>
<td>300355</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Getaway Car</p>
</blockquote></td>
<td>299598</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Linha Do Equador</p>
</blockquote></td>
<td>299337</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>#1 Zero</p>
</blockquote></td>
<td>299102</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Onde VocÃƒÂª Mora?</p>
</blockquote></td>
<td>298396</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Mel</p>
</blockquote></td>
<td>294765</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Moon germs</p>
</blockquote></td>
<td>294060</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Like a Stone</p>
</blockquote></td>
<td>294034</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Wake Up</p>
</blockquote></td>
<td>293485</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Out Of Exile</p>
</blockquote></td>
<td>291291</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Na Frente Da TV</p>
</blockquote></td>
<td>289750</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Sad But True</p>
</blockquote></td>
<td>288208</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Rios Pontes &amp; Overdrives</p>
</blockquote></td>
<td>286720</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Man In The Box</p>
</blockquote></td>
<td>286641</td>
</tr>
<tr class="even">
<td><blockquote>
<p>The Tower</p>
</blockquote></td>
<td>285257</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>A Sombra Da Maldade</p>
</blockquote></td>
<td>285231</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Garota De Ipanema</p>
</blockquote></td>
<td>285048</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Sunshine</p>
</blockquote></td>
<td>284969</td>
</tr>
<tr class="even">
<td><blockquote>
<p>All I Really Want</p>
</blockquote></td>
<td>284891</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Blood In The Wall</p>
</blockquote></td>
<td>284368</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Maracatu AtÃƒÂ´mico</p>
</blockquote></td>
<td>284264</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Lost My Better Half</p>
</blockquote></td>
<td>284081</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Bye, Bye Brasil</p>
</blockquote></td>
<td>283402</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>King In Crimson</p>
</blockquote></td>
<td>283167</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Gavioes 2001</p>
</blockquote></td>
<td>282723</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>A Estrada</p>
</blockquote></td>
<td>282174</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Born To Booze</p>
</blockquote></td>
<td>282122</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Vida Boa</p>
</blockquote></td>
<td>281730</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Freedom Of Speech</p>
</blockquote></td>
<td>281234</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Mary Jane</p>
</blockquote></td>
<td>280607</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Be Yourself</p>
</blockquote></td>
<td>279484</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Gasoline</p>
</blockquote></td>
<td>279457</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Dandelion</p>
</blockquote></td>
<td>278125</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Show Me How to Live</p>
</blockquote></td>
<td>277890</td>
</tr>
<tr class="even">
<td><blockquote>
<p>It Ain't Like That</p>
</blockquote></td>
<td>277577</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Heaven's Dead</p>
</blockquote></td>
<td>276688</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Like A Bird</p>
</blockquote></td>
<td>276532</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Vai-Vai 2001</p>
</blockquote></td>
<td>276349</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Flor Do Futuro</p>
</blockquote></td>
<td>275748</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 73%" />
<col style="width: 26%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>Do what cha wanna</p>
</blockquote></th>
<th>274155</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>X-9 2001</p>
</blockquote></td>
<td>273920</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Yesterday To Tomorrow</p>
</blockquote></td>
<td>273763</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Phoney Smile Fake Hellos</p>
</blockquote></td>
<td>273606</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Maracatu AtÃƒÂ´mico [Atomic Version]</p>
</blockquote></td>
<td>273084</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>A Cor Do Sol</p>
</blockquote></td>
<td>273031</td>
</tr>
<tr class="even">
<td><blockquote>
<p>200 Years Old</p>
</blockquote></td>
<td>272561</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Samidarish [instrumental]</p>
</blockquote></td>
<td>272431</td>
</tr>
<tr class="even">
<td><blockquote>
<p>The Beginning...At Last</p>
</blockquote></td>
<td>271960</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Canta, Canta Mais</p>
</blockquote></td>
<td>271856</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Samba Makossa</p>
</blockquote></td>
<td>271856</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Spellbound</p>
</blockquote></td>
<td>270863</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Killing Floor</p>
</blockquote></td>
<td>269557</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Bad Boy Boogie</p>
</blockquote></td>
<td>267728</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Head Over Feet</p>
</blockquote></td>
<td>267493</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>SÃƒÂ¡bado A Noite</p>
</blockquote></td>
<td>267363</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Felicidade Urgente</p>
</blockquote></td>
<td>266605</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>A.N.D.R.O.T.A.Z.</p>
</blockquote></td>
<td>266266</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Gates Of Urizen</p>
</blockquote></td>
<td>265351</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Dude (Looks Like A Lady)</p>
</blockquote></td>
<td>264855</td>
</tr>
<tr class="even">
<td><blockquote>
<p>The Wizard</p>
</blockquote></td>
<td>264829</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>FÃƒÂ©rias</p>
</blockquote></td>
<td>264202</td>
</tr>
<tr class="even">
<td><blockquote>
<p>I Can't Quit You Baby</p>
</blockquote></td>
<td>263836</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Evil Walks</p>
</blockquote></td>
<td>263497</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Breaking The Rules</p>
</blockquote></td>
<td>263288</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Set It Off</p>
</blockquote></td>
<td>263262</td>
</tr>
<tr class="even">
<td><blockquote>
<p>I Know Somethin (Bout You)</p>
</blockquote></td>
<td>261955</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Quadrant</p>
</blockquote></td>
<td>261851</td>
</tr>
<tr class="even">
<td><blockquote>
<p>What is and Should Never Be</p>
</blockquote></td>
<td>260675</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Meu Caro Amigo</p>
</blockquote></td>
<td>260257</td>
</tr>
<tr class="even">
<td><blockquote>
<p>ConciliaÃƒÂ§ÃƒÂ£o</p>
</blockquote></td>
<td>257619</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Onde VocÃƒÂª Mora?</p>
</blockquote></td>
<td>256026</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Doesn't Remind Me</p>
</blockquote></td>
<td>255869</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Your Time Has Come</p>
</blockquote></td>
<td>255529</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Johnny B. Goode</p>
</blockquote></td>
<td>254615</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Hell Ain't A Bad Place To Be</p>
</blockquote></td>
<td>254380</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Amor Demais</p>
</blockquote></td>
<td>254040</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Cada Um Cada Um (A Namoradeira)</p>
</blockquote></td>
<td>253492</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Dindi (Dindi)</p>
</blockquote></td>
<td>253178</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Ligia</p>
</blockquote></td>
<td>251977</td>
</tr>
<tr class="even">
<td><blockquote>
<p>A Luz De Tieta</p>
</blockquote></td>
<td>251742</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Da Lama Ao Caos</p>
</blockquote></td>
<td>251559</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Eat The Rich</p>
</blockquote></td>
<td>251036</td>
</tr>
</tbody>
</table>

 Q9. Find how much amount spent by each customer on artists? Write a query to return customer name, artist name and total spent.

 SELECT c.customer_id, c.first_name AS customer_name, ar.name AS artist_name, SUM(i.total) AS
 total_spent FROM Customer c JOIN Invoice i ON c.customer_id = i.customer_id JOIN Invoice_Line il ON i.invoice_id = il.invoice_id JOIN
 Track t ON t.track_id = il.track_id JOIN Album a ON t.album_id = a.album_id JOIN Artist ar ON ar.ArtistID = a.Artist_ID GROUP BY 1, 2, 3
 ORDER BY total_spent DESC;

<table>
<colgroup>
<col style="width: 17%" />
<col style="width: 22%" />
<col style="width: 43%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th>customer_id</th>
<th><blockquote>
<p>customer_name</p>
</blockquote></th>
<th><blockquote>
<p>name</p>
</blockquote></th>
<th>total_spent</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>2</td>
<td><blockquote>
<p>Leonie</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>196</td>
</tr>
<tr class="even">
<td>13</td>
<td><blockquote>
<p>Fernanda</p>
</blockquote></td>
<td><blockquote>
<p>AntÃƒÂ´nio Carlos Jobim</p>
</blockquote></td>
<td>196</td>
</tr>
<tr class="odd">
<td>15</td>
<td><blockquote>
<p>Jennifer</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>195</td>
</tr>
<tr class="even">
<td>55</td>
<td><blockquote>
<p>Mark</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>195</td>
</tr>
<tr class="odd">
<td>30</td>
<td><blockquote>
<p>Edward</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>169</td>
</tr>
<tr class="even">
<td>52</td>
<td><blockquote>
<p>Emma</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>169</td>
</tr>
<tr class="odd">
<td>54</td>
<td><blockquote>
<p>Steve</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>164</td>
</tr>
<tr class="even">
<td>34</td>
<td><blockquote>
<p>JoÃƒÂ£o</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>146</td>
</tr>
<tr class="odd">
<td>25</td>
<td><blockquote>
<p>Victor</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>144</td>
</tr>
<tr class="even">
<td>49</td>
<td><blockquote>
<p>StanisÃ…â€šaw</p>
</blockquote></td>
<td><blockquote>
<p>Buddy Guy</p>
</blockquote></td>
<td>121</td>
</tr>
<tr class="odd">
<td>53</td>
<td><blockquote>
<p>Phil</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>110</td>
</tr>
<tr class="even">
<td>21</td>
<td><blockquote>
<p>Kathy</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>94</td>
</tr>
<tr class="odd">
<td>49</td>
<td><blockquote>
<p>StanisÃ…â€šaw</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>90</td>
</tr>
<tr class="even">
<td>24</td>
<td><blockquote>
<p>Frank</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>64</td>
</tr>
<tr class="odd">
<td>3</td>
<td><blockquote>
<p>FranÃƒÂ§ois</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>64</td>
</tr>
<tr class="even">
<td>21</td>
<td><blockquote>
<p>Kathy</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>49</td>
</tr>
<tr class="odd">
<td>24</td>
<td><blockquote>
<p>Frank</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>49</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 17%" />
<col style="width: 22%" />
<col style="width: 43%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th>20</th>
<th><blockquote>
<p>Dan</p>
</blockquote></th>
<th><blockquote>
<p>Alice In Chains</p>
</blockquote></th>
<th>33</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>6</td>
<td><blockquote>
<p>Helena</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>33</td>
</tr>
<tr class="even">
<td>38</td>
<td><blockquote>
<p>Niklas</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>30</td>
</tr>
<tr class="odd">
<td>43</td>
<td><blockquote>
<p>Isabelle</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>27</td>
</tr>
<tr class="even">
<td>51</td>
<td><blockquote>
<p>Joakim</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>26</td>
</tr>
<tr class="odd">
<td>57</td>
<td><blockquote>
<p>Luis</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>26</td>
</tr>
<tr class="even">
<td>31</td>
<td><blockquote>
<p>Martha</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>25</td>
</tr>
<tr class="odd">
<td>58</td>
<td><blockquote>
<p>Manoj</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>25</td>
</tr>
<tr class="even">
<td>42</td>
<td><blockquote>
<p>Wyatt</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>25</td>
</tr>
<tr class="odd">
<td>3</td>
<td><blockquote>
<p>FranÃƒÂ§ois</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>24</td>
</tr>
<tr class="even">
<td>35</td>
<td><blockquote>
<p>Madalena</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>24</td>
</tr>
<tr class="odd">
<td>42</td>
<td><blockquote>
<p>Wyatt</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>23</td>
</tr>
<tr class="even">
<td>44</td>
<td><blockquote>
<p>Terhi</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>23</td>
</tr>
<tr class="odd">
<td>16</td>
<td><blockquote>
<p>Frank</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>22</td>
</tr>
<tr class="even">
<td>6</td>
<td><blockquote>
<p>Helena</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>22</td>
</tr>
<tr class="odd">
<td>17</td>
<td><blockquote>
<p>Jack</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>22</td>
</tr>
<tr class="even">
<td>38</td>
<td><blockquote>
<p>Niklas</p>
</blockquote></td>
<td><blockquote>
<p>Buddy Guy</p>
</blockquote></td>
<td>21</td>
</tr>
<tr class="odd">
<td>17</td>
<td><blockquote>
<p>Jack</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>21</td>
</tr>
<tr class="even">
<td>27</td>
<td><blockquote>
<p>Patrick</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>21</td>
</tr>
<tr class="odd">
<td>30</td>
<td><blockquote>
<p>Edward</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>21</td>
</tr>
<tr class="even">
<td>50</td>
<td><blockquote>
<p>Enrique</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>19</td>
</tr>
<tr class="odd">
<td>36</td>
<td><blockquote>
<p>Hannah</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>19</td>
</tr>
<tr class="even">
<td>13</td>
<td><blockquote>
<p>Fernanda</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>19</td>
</tr>
<tr class="odd">
<td>20</td>
<td><blockquote>
<p>Dan</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>19</td>
</tr>
<tr class="even">
<td>43</td>
<td><blockquote>
<p>Isabelle</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>19</td>
</tr>
<tr class="odd">
<td>3</td>
<td><blockquote>
<p>FranÃƒÂ§ois</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>19</td>
</tr>
<tr class="even">
<td>59</td>
<td><blockquote>
<p>Rishabh</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>18</td>
</tr>
<tr class="odd">
<td>49</td>
<td><blockquote>
<p>StanisÃ…â€šaw</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>18</td>
</tr>
<tr class="even">
<td>43</td>
<td><blockquote>
<p>Isabelle</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>17</td>
</tr>
<tr class="odd">
<td>50</td>
<td><blockquote>
<p>Enrique</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>17</td>
</tr>
<tr class="even">
<td>17</td>
<td><blockquote>
<p>Jack</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>17</td>
</tr>
<tr class="odd">
<td>7</td>
<td><blockquote>
<p>Astrid</p>
</blockquote></td>
<td><blockquote>
<p>Black Label Society</p>
</blockquote></td>
<td>17</td>
</tr>
<tr class="even">
<td>8</td>
<td><blockquote>
<p>Daan</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>16</td>
</tr>
<tr class="odd">
<td>48</td>
<td><blockquote>
<p>Johannes</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>16</td>
</tr>
<tr class="even">
<td>34</td>
<td><blockquote>
<p>JoÃƒÂ£o</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>15</td>
</tr>
<tr class="odd">
<td>20</td>
<td><blockquote>
<p>Dan</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>15</td>
</tr>
<tr class="even">
<td>57</td>
<td><blockquote>
<p>Luis</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>15</td>
</tr>
<tr class="odd">
<td>36</td>
<td><blockquote>
<p>Hannah</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>15</td>
</tr>
<tr class="even">
<td>26</td>
<td><blockquote>
<p>Richard</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>15</td>
</tr>
<tr class="odd">
<td>42</td>
<td><blockquote>
<p>Wyatt</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>14</td>
</tr>
<tr class="even">
<td>45</td>
<td><blockquote>
<p>Ladislav</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>14</td>
</tr>
<tr class="odd">
<td>59</td>
<td><blockquote>
<p>Rishabh</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>14</td>
</tr>
<tr class="even">
<td>40</td>
<td><blockquote>
<p>Dominique</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>14</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 17%" />
<col style="width: 22%" />
<col style="width: 43%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th>48</th>
<th><blockquote>
<p>Johannes</p>
</blockquote></th>
<th><blockquote>
<p>Buddy Guy</p>
</blockquote></th>
<th>14</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>7</td>
<td><blockquote>
<p>Astrid</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>13</td>
</tr>
<tr class="even">
<td>7</td>
<td><blockquote>
<p>Astrid</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>13</td>
</tr>
<tr class="odd">
<td>28</td>
<td><blockquote>
<p>Julia</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>13</td>
</tr>
<tr class="even">
<td>36</td>
<td><blockquote>
<p>Hannah</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>13</td>
</tr>
<tr class="odd">
<td>12</td>
<td><blockquote>
<p>Roberto</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>12</td>
</tr>
<tr class="even">
<td>19</td>
<td><blockquote>
<p>Tim</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>12</td>
</tr>
<tr class="odd">
<td>49</td>
<td><blockquote>
<p>StanisÃ…â€šaw</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="even">
<td>9</td>
<td><blockquote>
<p>Kara</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="odd">
<td>46</td>
<td><blockquote>
<p>Hugh</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="even">
<td>39</td>
<td><blockquote>
<p>Camille</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="odd">
<td>39</td>
<td><blockquote>
<p>Camille</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="even">
<td>57</td>
<td><blockquote>
<p>Luis</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="odd">
<td>36</td>
<td><blockquote>
<p>Hannah</p>
</blockquote></td>
<td><blockquote>
<p>Billy Cobham</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="even">
<td>45</td>
<td><blockquote>
<p>Ladislav</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="odd">
<td>45</td>
<td><blockquote>
<p>Ladislav</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="even">
<td>32</td>
<td><blockquote>
<p>Aaron</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="odd">
<td>32</td>
<td><blockquote>
<p>Aaron</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="even">
<td>22</td>
<td><blockquote>
<p>Heather</p>
</blockquote></td>
<td><blockquote>
<p>Led Zeppelin</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="odd">
<td>6</td>
<td><blockquote>
<p>Helena</p>
</blockquote></td>
<td><blockquote>
<p>AntÃƒÂ´nio Carlos Jobim</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="even">
<td>35</td>
<td><blockquote>
<p>Madalena</p>
</blockquote></td>
<td><blockquote>
<p>Accept</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="odd">
<td>17</td>
<td><blockquote>
<p>Jack</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="even">
<td>27</td>
<td><blockquote>
<p>Patrick</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="odd">
<td>20</td>
<td><blockquote>
<p>Dan</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="even">
<td>2</td>
<td><blockquote>
<p>Leonie</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="odd">
<td>6</td>
<td><blockquote>
<p>Helena</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="even">
<td>17</td>
<td><blockquote>
<p>Jack</p>
</blockquote></td>
<td><blockquote>
<p>Accept</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="odd">
<td>58</td>
<td><blockquote>
<p>Manoj</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="even">
<td>58</td>
<td><blockquote>
<p>Manoj</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="odd">
<td>58</td>
<td><blockquote>
<p>Manoj</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="even">
<td>8</td>
<td><blockquote>
<p>Daan</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="odd">
<td>8</td>
<td><blockquote>
<p>Daan</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="even">
<td>8</td>
<td><blockquote>
<p>Daan</p>
</blockquote></td>
<td><blockquote>
<p>Black Label Society</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="odd">
<td>23</td>
<td><blockquote>
<p>John</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="even">
<td>6</td>
<td><blockquote>
<p>Helena</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="odd">
<td>6</td>
<td><blockquote>
<p>Helena</p>
</blockquote></td>
<td><blockquote>
<p>Bruce Dickinson</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="even">
<td>41</td>
<td><blockquote>
<p>Marc</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="odd">
<td>5</td>
<td><blockquote>
<p>FrantiÃ…Â¡ek</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="even">
<td>57</td>
<td><blockquote>
<p>Luis</p>
</blockquote></td>
<td><blockquote>
<p>Caetano Veloso</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="odd">
<td>2</td>
<td><blockquote>
<p>Leonie</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="even">
<td>49</td>
<td><blockquote>
<p>StanisÃ…â€šaw</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="odd">
<td>55</td>
<td><blockquote>
<p>Mark</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="even">
<td>55</td>
<td><blockquote>
<p>Mark</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>11</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 17%" />
<col style="width: 22%" />
<col style="width: 43%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th>12</th>
<th><blockquote>
<p>Roberto</p>
</blockquote></th>
<th><blockquote>
<p>Alice In Chains</p>
</blockquote></th>
<th>11</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>12</td>
<td><blockquote>
<p>Roberto</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="even">
<td>12</td>
<td><blockquote>
<p>Roberto</p>
</blockquote></td>
<td><blockquote>
<p>Black Label Society</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="odd">
<td>12</td>
<td><blockquote>
<p>Roberto</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>11</td>
</tr>
<tr class="even">
<td>30</td>
<td><blockquote>
<p>Edward</p>
</blockquote></td>
<td><blockquote>
<p>Buddy Guy</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="odd">
<td>59</td>
<td><blockquote>
<p>Rishabh</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="even">
<td>43</td>
<td><blockquote>
<p>Isabelle</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="odd">
<td>43</td>
<td><blockquote>
<p>Isabelle</p>
</blockquote></td>
<td><blockquote>
<p>Led Zeppelin</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="even">
<td>37</td>
<td><blockquote>
<p>Fynn</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="odd">
<td>57</td>
<td><blockquote>
<p>Luis</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="even">
<td>10</td>
<td><blockquote>
<p>Eduardo</p>
</blockquote></td>
<td><blockquote>
<p>Black Label Society</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="odd">
<td>33</td>
<td><blockquote>
<p>Ellie</p>
</blockquote></td>
<td><blockquote>
<p>Led Zeppelin</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="even">
<td>33</td>
<td><blockquote>
<p>Ellie</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="odd">
<td>13</td>
<td><blockquote>
<p>Fernanda</p>
</blockquote></td>
<td><blockquote>
<p>Black Label Society</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="even">
<td>3</td>
<td><blockquote>
<p>FranÃƒÂ§ois</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="odd">
<td>3</td>
<td><blockquote>
<p>FranÃƒÂ§ois</p>
</blockquote></td>
<td><blockquote>
<p>Chico Buarque</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="even">
<td>3</td>
<td><blockquote>
<p>FranÃƒÂ§ois</p>
</blockquote></td>
<td><blockquote>
<p>Buddy Guy</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="odd">
<td>35</td>
<td><blockquote>
<p>Madalena</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="even">
<td>35</td>
<td><blockquote>
<p>Madalena</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="odd">
<td>25</td>
<td><blockquote>
<p>Victor</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="even">
<td>34</td>
<td><blockquote>
<p>JoÃƒÂ£o</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="odd">
<td>57</td>
<td><blockquote>
<p>Luis</p>
</blockquote></td>
<td><blockquote>
<p>Bruce Dickinson</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="even">
<td>57</td>
<td><blockquote>
<p>Luis</p>
</blockquote></td>
<td><blockquote>
<p>Led Zeppelin</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="odd">
<td>58</td>
<td><blockquote>
<p>Manoj</p>
</blockquote></td>
<td><blockquote>
<p>Black Label Society</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="even">
<td>28</td>
<td><blockquote>
<p>Julia</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="odd">
<td>42</td>
<td><blockquote>
<p>Wyatt</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="even">
<td>50</td>
<td><blockquote>
<p>Enrique</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="odd">
<td>21</td>
<td><blockquote>
<p>Kathy</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="even">
<td>21</td>
<td><blockquote>
<p>Kathy</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="odd">
<td>50</td>
<td><blockquote>
<p>Enrique</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="even">
<td>46</td>
<td><blockquote>
<p>Hugh</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="odd">
<td>46</td>
<td><blockquote>
<p>Hugh</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="even">
<td>3</td>
<td><blockquote>
<p>FranÃƒÂ§ois</p>
</blockquote></td>
<td><blockquote>
<p>Led Zeppelin</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="odd">
<td>26</td>
<td><blockquote>
<p>Richard</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="even">
<td>54</td>
<td><blockquote>
<p>Steve</p>
</blockquote></td>
<td><blockquote>
<p>Cidade Negra</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="odd">
<td>18</td>
<td><blockquote>
<p>Michelle</p>
</blockquote></td>
<td><blockquote>
<p>Bruce Dickinson</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="even">
<td>13</td>
<td><blockquote>
<p>Fernanda</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="odd">
<td>5</td>
<td><blockquote>
<p>FrantiÃ…Â¡ek</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="even">
<td>5</td>
<td><blockquote>
<p>FrantiÃ…Â¡ek</p>
</blockquote></td>
<td><blockquote>
<p>Caetano Veloso</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="odd">
<td>5</td>
<td><blockquote>
<p>FrantiÃ…Â¡ek</p>
</blockquote></td>
<td><blockquote>
<p>Black Label Society</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="even">
<td>30</td>
<td><blockquote>
<p>Edward</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="odd">
<td>53</td>
<td><blockquote>
<p>Phil</p>
</blockquote></td>
<td><blockquote>
<p>Chico Buarque</p>
</blockquote></td>
<td>10</td>
</tr>
<tr class="even">
<td>53</td>
<td><blockquote>
<p>Phil</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>10</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 17%" />
<col style="width: 22%" />
<col style="width: 43%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th>24</th>
<th><blockquote>
<p>Frank</p>
</blockquote></th>
<th><blockquote>
<p>Apocalyptica</p>
</blockquote></th>
<th>10</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>18</td>
<td><blockquote>
<p>Michelle</p>
</blockquote></td>
<td><blockquote>
<p>Caetano Veloso</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="even">
<td>18</td>
<td><blockquote>
<p>Michelle</p>
</blockquote></td>
<td><blockquote>
<p>Buddy Guy</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="odd">
<td>19</td>
<td><blockquote>
<p>Tim</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="even">
<td>5</td>
<td><blockquote>
<p>FrantiÃ…Â¡ek</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="odd">
<td>50</td>
<td><blockquote>
<p>Enrique</p>
</blockquote></td>
<td><blockquote>
<p>Cidade Negra</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="even">
<td>59</td>
<td><blockquote>
<p>Rishabh</p>
</blockquote></td>
<td><blockquote>
<p>Led Zeppelin</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="odd">
<td>42</td>
<td><blockquote>
<p>Wyatt</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="even">
<td>59</td>
<td><blockquote>
<p>Rishabh</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="odd">
<td>41</td>
<td><blockquote>
<p>Marc</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="even">
<td>28</td>
<td><blockquote>
<p>Julia</p>
</blockquote></td>
<td><blockquote>
<p>Billy Cobham</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="odd">
<td>51</td>
<td><blockquote>
<p>Joakim</p>
</blockquote></td>
<td><blockquote>
<p>Buddy Guy</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="even">
<td>58</td>
<td><blockquote>
<p>Manoj</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="odd">
<td>4</td>
<td><blockquote>
<p>BjÃƒÂ¸rn</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="even">
<td>48</td>
<td><blockquote>
<p>Johannes</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="odd">
<td>22</td>
<td><blockquote>
<p>Heather</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="even">
<td>52</td>
<td><blockquote>
<p>Emma</p>
</blockquote></td>
<td><blockquote>
<p>Black Label Society</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="odd">
<td>26</td>
<td><blockquote>
<p>Richard</p>
</blockquote></td>
<td><blockquote>
<p>Buddy Guy</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="even">
<td>54</td>
<td><blockquote>
<p>Steve</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="odd">
<td>54</td>
<td><blockquote>
<p>Steve</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="even">
<td>7</td>
<td><blockquote>
<p>Astrid</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="odd">
<td>18</td>
<td><blockquote>
<p>Michelle</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="even">
<td>38</td>
<td><blockquote>
<p>Niklas</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="odd">
<td>38</td>
<td><blockquote>
<p>Niklas</p>
</blockquote></td>
<td><blockquote>
<p>Caetano Veloso</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="even">
<td>3</td>
<td><blockquote>
<p>FranÃƒÂ§ois</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="odd">
<td>27</td>
<td><blockquote>
<p>Patrick</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="even">
<td>27</td>
<td><blockquote>
<p>Patrick</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="odd">
<td>40</td>
<td><blockquote>
<p>Dominique</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>9</td>
</tr>
<tr class="even">
<td>39</td>
<td><blockquote>
<p>Camille</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="odd">
<td>39</td>
<td><blockquote>
<p>Camille</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="even">
<td>39</td>
<td><blockquote>
<p>Camille</p>
</blockquote></td>
<td><blockquote>
<p>Bruce Dickinson</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="odd">
<td>44</td>
<td><blockquote>
<p>Terhi</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="even">
<td>19</td>
<td><blockquote>
<p>Tim</p>
</blockquote></td>
<td><blockquote>
<p>Billy Cobham</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="odd">
<td>19</td>
<td><blockquote>
<p>Tim</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="even">
<td>15</td>
<td><blockquote>
<p>Jennifer</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="odd">
<td>54</td>
<td><blockquote>
<p>Steve</p>
</blockquote></td>
<td><blockquote>
<p>Accept</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="even">
<td>2</td>
<td><blockquote>
<p>Leonie</p>
</blockquote></td>
<td><blockquote>
<p>Buddy Guy</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="odd">
<td>2</td>
<td><blockquote>
<p>Leonie</p>
</blockquote></td>
<td><blockquote>
<p>Chico Buarque</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="even">
<td>24</td>
<td><blockquote>
<p>Frank</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="odd">
<td>41</td>
<td><blockquote>
<p>Marc</p>
</blockquote></td>
<td><blockquote>
<p>AntÃƒÂ´nio Carlos Jobim</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="even">
<td>41</td>
<td><blockquote>
<p>Marc</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="odd">
<td>15</td>
<td><blockquote>
<p>Jennifer</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="even">
<td>10</td>
<td><blockquote>
<p>Eduardo</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>8</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 17%" />
<col style="width: 22%" />
<col style="width: 43%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th>6</th>
<th><blockquote>
<p>Helena</p>
</blockquote></th>
<th><blockquote>
<p>Chico Science &amp; NaÃƒÂ§ÃƒÂ£o</p>
<p>Zumbi</p>
</blockquote></th>
<th>8</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>34</td>
<td><blockquote>
<p>JoÃƒÂ£o</p>
</blockquote></td>
<td><blockquote>
<p>Accept</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="even">
<td>43</td>
<td><blockquote>
<p>Isabelle</p>
</blockquote></td>
<td><blockquote>
<p>Buddy Guy</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="odd">
<td>43</td>
<td><blockquote>
<p>Isabelle</p>
</blockquote></td>
<td><blockquote>
<p>Chico Buarque</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="even">
<td>30</td>
<td><blockquote>
<p>Edward</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="odd">
<td>12</td>
<td><blockquote>
<p>Roberto</p>
</blockquote></td>
<td><blockquote>
<p>Chico Science &amp; NaÃƒÂ§ÃƒÂ£o</p>
<p>Zumbi</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="even">
<td>48</td>
<td><blockquote>
<p>Johannes</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="odd">
<td>11</td>
<td><blockquote>
<p>Alexandre</p>
</blockquote></td>
<td><blockquote>
<p>Chico Buarque</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="even">
<td>11</td>
<td><blockquote>
<p>Alexandre</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="odd">
<td>10</td>
<td><blockquote>
<p>Eduardo</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="even">
<td>33</td>
<td><blockquote>
<p>Ellie</p>
</blockquote></td>
<td><blockquote>
<p>Caetano Veloso</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="odd">
<td>23</td>
<td><blockquote>
<p>John</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="even">
<td>23</td>
<td><blockquote>
<p>John</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="odd">
<td>23</td>
<td><blockquote>
<p>John</p>
</blockquote></td>
<td><blockquote>
<p>Buddy Guy</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="even">
<td>59</td>
<td><blockquote>
<p>Rishabh</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="odd">
<td>59</td>
<td><blockquote>
<p>Rishabh</p>
</blockquote></td>
<td><blockquote>
<p>Caetano Veloso</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="even">
<td>59</td>
<td><blockquote>
<p>Rishabh</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="odd">
<td>59</td>
<td><blockquote>
<p>Rishabh</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>8</td>
</tr>
<tr class="even">
<td>10</td>
<td><blockquote>
<p>Eduardo</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>7</td>
</tr>
<tr class="odd">
<td>51</td>
<td><blockquote>
<p>Joakim</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>7</td>
</tr>
<tr class="even">
<td>49</td>
<td><blockquote>
<p>StanisÃ…â€šaw</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>7</td>
</tr>
<tr class="odd">
<td>38</td>
<td><blockquote>
<p>Niklas</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>7</td>
</tr>
<tr class="even">
<td>38</td>
<td><blockquote>
<p>Niklas</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>7</td>
</tr>
<tr class="odd">
<td>52</td>
<td><blockquote>
<p>Emma</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>7</td>
</tr>
<tr class="even">
<td>56</td>
<td><blockquote>
<p>Diego</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>7</td>
</tr>
<tr class="odd">
<td>43</td>
<td><blockquote>
<p>Isabelle</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>7</td>
</tr>
<tr class="even">
<td>55</td>
<td><blockquote>
<p>Mark</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>7</td>
</tr>
<tr class="odd">
<td>19</td>
<td><blockquote>
<p>Tim</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>7</td>
</tr>
<tr class="even">
<td>42</td>
<td><blockquote>
<p>Wyatt</p>
</blockquote></td>
<td><blockquote>
<p>AntÃƒÂ´nio Carlos Jobim</p>
</blockquote></td>
<td>7</td>
</tr>
<tr class="odd">
<td>42</td>
<td><blockquote>
<p>Wyatt</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>7</td>
</tr>
<tr class="even">
<td>53</td>
<td><blockquote>
<p>Phil</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>7</td>
</tr>
<tr class="odd">
<td>5</td>
<td><blockquote>
<p>FrantiÃ…Â¡ek</p>
</blockquote></td>
<td><blockquote>
<p>Led Zeppelin</p>
</blockquote></td>
<td>7</td>
</tr>
<tr class="even">
<td>48</td>
<td><blockquote>
<p>Johannes</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>7</td>
</tr>
<tr class="odd">
<td>32</td>
<td><blockquote>
<p>Aaron</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>7</td>
</tr>
<tr class="even">
<td>35</td>
<td><blockquote>
<p>Madalena</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>7</td>
</tr>
<tr class="odd">
<td>8</td>
<td><blockquote>
<p>Daan</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>6</td>
</tr>
<tr class="even">
<td>15</td>
<td><blockquote>
<p>Jennifer</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>6</td>
</tr>
<tr class="odd">
<td>29</td>
<td><blockquote>
<p>Robert</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>6</td>
</tr>
<tr class="even">
<td>20</td>
<td><blockquote>
<p>Dan</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>6</td>
</tr>
<tr class="odd">
<td>47</td>
<td><blockquote>
<p>Lucas</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>6</td>
</tr>
<tr class="even">
<td>4</td>
<td><blockquote>
<p>BjÃƒÂ¸rn</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>6</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 17%" />
<col style="width: 22%" />
<col style="width: 43%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th>4</th>
<th><blockquote>
<p>BjÃƒÂ¸rn</p>
</blockquote></th>
<th><blockquote>
<p>Body Count</p>
</blockquote></th>
<th>6</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>14</td>
<td><blockquote>
<p>Mark</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>6</td>
</tr>
<tr class="even">
<td>14</td>
<td><blockquote>
<p>Mark</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>6</td>
</tr>
<tr class="odd">
<td>14</td>
<td><blockquote>
<p>Mark</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>6</td>
</tr>
<tr class="even">
<td>8</td>
<td><blockquote>
<p>Daan</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>6</td>
</tr>
<tr class="odd">
<td>25</td>
<td><blockquote>
<p>Victor</p>
</blockquote></td>
<td><blockquote>
<p>Black Label Society</p>
</blockquote></td>
<td>6</td>
</tr>
<tr class="even">
<td>25</td>
<td><blockquote>
<p>Victor</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>6</td>
</tr>
<tr class="odd">
<td>26</td>
<td><blockquote>
<p>Richard</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>6</td>
</tr>
<tr class="even">
<td>26</td>
<td><blockquote>
<p>Richard</p>
</blockquote></td>
<td><blockquote>
<p>Caetano Veloso</p>
</blockquote></td>
<td>6</td>
</tr>
<tr class="odd">
<td>6</td>
<td><blockquote>
<p>Helena</p>
</blockquote></td>
<td><blockquote>
<p>Led Zeppelin</p>
</blockquote></td>
<td>6</td>
</tr>
<tr class="even">
<td>10</td>
<td><blockquote>
<p>Eduardo</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>6</td>
</tr>
<tr class="odd">
<td>45</td>
<td><blockquote>
<p>Ladislav</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>6</td>
</tr>
<tr class="even">
<td>34</td>
<td><blockquote>
<p>JoÃƒÂ£o</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>5</td>
</tr>
<tr class="odd">
<td>9</td>
<td><blockquote>
<p>Kara</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>5</td>
</tr>
<tr class="even">
<td>30</td>
<td><blockquote>
<p>Edward</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>5</td>
</tr>
<tr class="odd">
<td>30</td>
<td><blockquote>
<p>Edward</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>5</td>
</tr>
<tr class="even">
<td>9</td>
<td><blockquote>
<p>Kara</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>5</td>
</tr>
<tr class="odd">
<td>9</td>
<td><blockquote>
<p>Kara</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>5</td>
</tr>
<tr class="even">
<td>19</td>
<td><blockquote>
<p>Tim</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>5</td>
</tr>
<tr class="odd">
<td>11</td>
<td><blockquote>
<p>Alexandre</p>
</blockquote></td>
<td><blockquote>
<p>Caetano Veloso</p>
</blockquote></td>
<td>5</td>
</tr>
<tr class="even">
<td>36</td>
<td><blockquote>
<p>Hannah</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>5</td>
</tr>
<tr class="odd">
<td>53</td>
<td><blockquote>
<p>Phil</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
<td>5</td>
</tr>
<tr class="even">
<td>53</td>
<td><blockquote>
<p>Phil</p>
</blockquote></td>
<td><blockquote>
<p>Billy Cobham</p>
</blockquote></td>
<td>5</td>
</tr>
<tr class="odd">
<td>37</td>
<td><blockquote>
<p>Fynn</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>5</td>
</tr>
<tr class="even">
<td>15</td>
<td><blockquote>
<p>Jennifer</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>5</td>
</tr>
<tr class="odd">
<td>15</td>
<td><blockquote>
<p>Jennifer</p>
</blockquote></td>
<td><blockquote>
<p>Black Label Society</p>
</blockquote></td>
<td>5</td>
</tr>
<tr class="even">
<td>32</td>
<td><blockquote>
<p>Aaron</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>4</td>
</tr>
<tr class="odd">
<td>51</td>
<td><blockquote>
<p>Joakim</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>4</td>
</tr>
<tr class="even">
<td>40</td>
<td><blockquote>
<p>Dominique</p>
</blockquote></td>
<td><blockquote>
<p>Chico Buarque</p>
</blockquote></td>
<td>4</td>
</tr>
<tr class="odd">
<td>40</td>
<td><blockquote>
<p>Dominique</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>4</td>
</tr>
<tr class="even">
<td>40</td>
<td><blockquote>
<p>Dominique</p>
</blockquote></td>
<td><blockquote>
<p>Black Label Society</p>
</blockquote></td>
<td>4</td>
</tr>
<tr class="odd">
<td>28</td>
<td><blockquote>
<p>Julia</p>
</blockquote></td>
<td><blockquote>
<p>Body Count</p>
</blockquote></td>
<td>4</td>
</tr>
<tr class="even">
<td>39</td>
<td><blockquote>
<p>Camille</p>
</blockquote></td>
<td><blockquote>
<p>Black Label Society</p>
</blockquote></td>
<td>4</td>
</tr>
<tr class="odd">
<td>48</td>
<td><blockquote>
<p>Johannes</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>4</td>
</tr>
<tr class="even">
<td>30</td>
<td><blockquote>
<p>Edward</p>
</blockquote></td>
<td><blockquote>
<p>AntÃƒÂ´nio Carlos Jobim</p>
</blockquote></td>
<td>4</td>
</tr>
<tr class="odd">
<td>43</td>
<td><blockquote>
<p>Isabelle</p>
</blockquote></td>
<td><blockquote>
<p>Caetano Veloso</p>
</blockquote></td>
<td>3</td>
</tr>
<tr class="even">
<td>47</td>
<td><blockquote>
<p>Lucas</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>3</td>
</tr>
<tr class="odd">
<td>33</td>
<td><blockquote>
<p>Ellie</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>3</td>
</tr>
<tr class="even">
<td>58</td>
<td><blockquote>
<p>Manoj</p>
</blockquote></td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
<td>3</td>
</tr>
<tr class="odd">
<td>51</td>
<td><blockquote>
<p>Joakim</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>3</td>
</tr>
<tr class="even">
<td>31</td>
<td><blockquote>
<p>Martha</p>
</blockquote></td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
<td>2</td>
</tr>
<tr class="odd">
<td>55</td>
<td><blockquote>
<p>Mark</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>2</td>
</tr>
<tr class="even">
<td>32</td>
<td><blockquote>
<p>Aaron</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>2</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 17%" />
<col style="width: 22%" />
<col style="width: 43%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th>50</th>
<th><blockquote>
<p>Enrique</p>
</blockquote></th>
<th><blockquote>
<p>Chico Buarque</p>
</blockquote></th>
<th>2</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>12</td>
<td><blockquote>
<p>Roberto</p>
</blockquote></td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
<td>2</td>
</tr>
<tr class="even">
<td>52</td>
<td><blockquote>
<p>Emma</p>
</blockquote></td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
<td>2</td>
</tr>
<tr class="odd">
<td>2</td>
<td><blockquote>
<p>Leonie</p>
</blockquote></td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
<td>1</td>
</tr>
<tr class="even">
<td>47</td>
<td><blockquote>
<p>Lucas</p>
</blockquote></td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
<td>1</td>
</tr>
</tbody>
</table>

Q10. We want to find out the most popular music Genre for each country. We determine the most popular genre as the genre with the highest amount of purchases. Write a query that returns each country along with the top Genre. For countries where the maximum number of purchases is shared return all Genres.

SELECT country_name, genre_name, total_quantity FROM (SELECT c.country AS country_name, g.name AS genre_name, SUM(il.Quantity) AS total_quantity, RANK() OVER (PARTITION BY c.country ORDER BY SUM(il.Quantity) DESC) AS rnk FROM customer c JOIN invoice i ON c.customer_id = i.customer_id JOIN invoice_line il ON il.invoice_id = i.invoice_id JOIN track t ON il.track_id = t.track_id JOIN genre g ON t.genre_id = g.genre_id GROUP BY 1, 2) AS abc WHERE rnk = 1;

<table>
<colgroup>
<col style="width: 31%" />
<col style="width: 35%" />
<col style="width: 31%" />
<col style="width: 2%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>country_name</p>
</blockquote></th>
<th><blockquote>
<p>genre_name</p>
</blockquote></th>
<th colspan="2"><blockquote>
<p>total_quantity</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>Argentina</p>
</blockquote></td>
<td><blockquote>
<p>Rock</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Australia</p>
</blockquote></td>
<td><blockquote>
<p>Metal</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Austria</p>
</blockquote></td>
<td><blockquote>
<p>Metal</p>
</blockquote></td>
<td><blockquote>
<p>3</p>
</blockquote></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Belgium</p>
</blockquote></td>
<td><blockquote>
<p>Metal</p>
</blockquote></td>
<td><blockquote>
<p>2</p>
</blockquote></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Brazil</p>
</blockquote></td>
<td><blockquote>
<p>Alternative &amp;</p>
<p>Punk</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Canada</p>
</blockquote></td>
<td><blockquote>
<p>Alternative &amp;</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
<td></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 32%" />
<col style="width: 36%" />
<col style="width: 31%" />
</colgroup>
<thead>
<tr class="header">
<th></th>
<th><blockquote>
<p>Punk</p>
</blockquote></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>Canada</p>
</blockquote></td>
<td><blockquote>
<p>Jazz</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Chile</p>
</blockquote></td>
<td><blockquote>
<p>Latin</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Czech</p>
<p>Republic</p>
</blockquote></td>
<td><blockquote>
<p>Jazz</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Denmark</p>
</blockquote></td>
<td><blockquote>
<p>Rock</p>
</blockquote></td>
<td><blockquote>
<p>6</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Finland</p>
</blockquote></td>
<td><blockquote>
<p>Rock</p>
</blockquote></td>
<td><blockquote>
<p>5</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>France</p>
</blockquote></td>
<td><blockquote>
<p>Blues</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>France</p>
</blockquote></td>
<td><blockquote>
<p>Alternative &amp;</p>
<p>Punk</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Germany</p>
</blockquote></td>
<td><blockquote>
<p>Jazz</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Hungary</p>
</blockquote></td>
<td><blockquote>
<p>Alternative &amp;</p>
<p>Punk</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>India</p>
</blockquote></td>
<td><blockquote>
<p>Alternative &amp;</p>
<p>Punk</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>India</p>
</blockquote></td>
<td><blockquote>
<p>Latin</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Ireland</p>
</blockquote></td>
<td><blockquote>
<p>Metal</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Italy</p>
</blockquote></td>
<td><blockquote>
<p>Rock</p>
</blockquote></td>
<td><blockquote>
<p>3</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Netherlands</p>
</blockquote></td>
<td><blockquote>
<p>Blues</p>
</blockquote></td>
<td><blockquote>
<p>2</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Norway</p>
</blockquote></td>
<td><blockquote>
<p>Metal</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Norway</p>
</blockquote></td>
<td><blockquote>
<p>Alternative &amp;</p>
<p>Punk</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Norway</p>
</blockquote></td>
<td><blockquote>
<p>Rock</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Poland</p>
</blockquote></td>
<td><blockquote>
<p>Metal</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Portugal</p>
</blockquote></td>
<td><blockquote>
<p>Metal</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Portugal</p>
</blockquote></td>
<td><blockquote>
<p>Alternative &amp;</p>
<p>Punk</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Spain</p>
</blockquote></td>
<td><blockquote>
<p>Reggae</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Spain</p>
</blockquote></td>
<td><blockquote>
<p>Latin</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Sweden</p>
</blockquote></td>
<td><blockquote>
<p>Blues</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Sweden</p>
</blockquote></td>
<td><blockquote>
<p>Metal</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>United</p>
<p>Kingdom</p>
</blockquote></td>
<td><blockquote>
<p>Jazz</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>United</p>
<p>Kingdom</p>
</blockquote></td>
<td><blockquote>
<p>Alternative &amp;</p>
<p>Punk</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>United</p>
<p>Kingdom</p>
</blockquote></td>
<td><blockquote>
<p>Latin</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>United</p>
<p>Kingdom</p>
</blockquote></td>
<td><blockquote>
<p>Reggae</p>
</blockquote></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>USA</p>
</blockquote></td>
<td><blockquote>
<p>Alternative &amp;</p>
<p>Punk</p>
</blockquote></td>
<td><blockquote>
<p>2</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>USA</p>
</blockquote></td>
<td><blockquote>
<p>Latin</p>
</blockquote></td>
<td><blockquote>
<p>2</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>USA</p>
</blockquote></td>
<td><blockquote>
<p>Jazz</p>
</blockquote></td>
<td><blockquote>
<p>2</p>
</blockquote></td>
</tr>
</tbody>
</table>

Q11. Write a query that determines the customer that has spent the most on music for each country. Write a query that returns the country along with the top customer and how much they spent. For countries where the top amount spent is shared, provide all customers who spent this amount.

SELECT customer_id, first_name, last_name, billing_country, total_spent FROM (SELECT c.customer_id, c.first_name, c.last_name, i.billing_country,SUM(i.total) AS total_spent,ROW_NUMBER() OVER (PARTITION BY i.billing_country ORDER BY SUM(i.total) DESC) AS row_num FROM invoice i JOIN customer c ON c.customer_id = i.customer_id GROUP BY 1, 2, 3, 4) AS abc WHERE row_num = 1;

<table>
<colgroup>
<col style="width: 16%" />
<col style="width: 19%" />
<col style="width: 28%" />
<col style="width: 19%" />
<col style="width: 15%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>customer_id</p>
</blockquote></th>
<th><blockquote>
<p>first_name</p>
</blockquote></th>
<th><blockquote>
<p>last_name</p>
</blockquote></th>
<th><blockquote>
<p>billing_country</p>
</blockquote></th>
<th><blockquote>
<p>total_spent</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>56</p>
</blockquote></td>
<td><blockquote>
<p>Diego</p>
</blockquote></td>
<td><blockquote>
<p>GutiÃƒÂ©rrez</p>
</blockquote></td>
<td><blockquote>
<p>Argentina</p>
</blockquote></td>
<td><blockquote>
<p>40</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>55</p>
</blockquote></td>
<td><blockquote>
<p>Mark</p>
</blockquote></td>
<td><blockquote>
<p>Taylor</p>
</blockquote></td>
<td><blockquote>
<p>Australia</p>
</blockquote></td>
<td><blockquote>
<p>82</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>7</p>
</blockquote></td>
<td><blockquote>
<p>Astrid</p>
</blockquote></td>
<td><blockquote>
<p>Gruber</p>
</blockquote></td>
<td><blockquote>
<p>Austria</p>
</blockquote></td>
<td><blockquote>
<p>70</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>8</p>
</blockquote></td>
<td><blockquote>
<p>Daan</p>
</blockquote></td>
<td><blockquote>
<p>Peeters</p>
</blockquote></td>
<td><blockquote>
<p>Belgium</p>
</blockquote></td>
<td><blockquote>
<p>61</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>13</p>
</blockquote></td>
<td><blockquote>
<p>Fernanda</p>
</blockquote></td>
<td><blockquote>
<p>Ramos</p>
</blockquote></td>
<td><blockquote>
<p>Brazil</p>
</blockquote></td>
<td><blockquote>
<p>108</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>3</p>
</blockquote></td>
<td><blockquote>
<p>FranÃƒÂ§ois</p>
</blockquote></td>
<td><blockquote>
<p>Tremblay</p>
</blockquote></td>
<td><blockquote>
<p>Canada</p>
</blockquote></td>
<td><blockquote>
<p>101</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>57</p>
</blockquote></td>
<td><blockquote>
<p>Luis</p>
</blockquote></td>
<td><blockquote>
<p>Rojas</p>
</blockquote></td>
<td><blockquote>
<p>Chile</p>
</blockquote></td>
<td><blockquote>
<p>98</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>5</p>
</blockquote></td>
<td><blockquote>
<p>FrantiÃ…Â¡ek</p>
</blockquote></td>
<td><blockquote>
<p>WichterlovÃƒÂ¡</p>
</blockquote></td>
<td><blockquote>
<p>Czech Republic</p>
</blockquote></td>
<td><blockquote>
<p>146</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>9</p>
</blockquote></td>
<td><blockquote>
<p>Kara</p>
</blockquote></td>
<td><blockquote>
<p>Nielsen</p>
</blockquote></td>
<td><blockquote>
<p>Denmark</p>
</blockquote></td>
<td><blockquote>
<p>38</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>44</p>
</blockquote></td>
<td><blockquote>
<p>Terhi</p>
</blockquote></td>
<td><blockquote>
<p>HÃƒÂ¤mÃƒÂ¤lÃƒÂ¤inen</p>
</blockquote></td>
<td><blockquote>
<p>Finland</p>
</blockquote></td>
<td><blockquote>
<p>80</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>42</p>
</blockquote></td>
<td><blockquote>
<p>Wyatt</p>
</blockquote></td>
<td><blockquote>
<p>Girard</p>
</blockquote></td>
<td><blockquote>
<p>France</p>
</blockquote></td>
<td><blockquote>
<p>101</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>37</p>
</blockquote></td>
<td><blockquote>
<p>Fynn</p>
</blockquote></td>
<td><blockquote>
<p>Zimmermann</p>
</blockquote></td>
<td><blockquote>
<p>Germany</p>
</blockquote></td>
<td><blockquote>
<p>95</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>45</p>
</blockquote></td>
<td><blockquote>
<p>Ladislav</p>
</blockquote></td>
<td><blockquote>
<p>KovÃƒÂ¡cs</p>
</blockquote></td>
<td><blockquote>
<p>Hungary</p>
</blockquote></td>
<td><blockquote>
<p>79</p>
</blockquote></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 16%" />
<col style="width: 19%" />
<col style="width: 28%" />
<col style="width: 19%" />
<col style="width: 15%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>58</p>
</blockquote></th>
<th><blockquote>
<p>Manoj</p>
</blockquote></th>
<th><blockquote>
<p>Pareek</p>
</blockquote></th>
<th><blockquote>
<p>India</p>
</blockquote></th>
<th><blockquote>
<p>113</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>46</p>
</blockquote></td>
<td><blockquote>
<p>Hugh</p>
</blockquote></td>
<td><blockquote>
<p>O'Reilly</p>
</blockquote></td>
<td><blockquote>
<p>Ireland</p>
</blockquote></td>
<td><blockquote>
<p>116</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>47</p>
</blockquote></td>
<td><blockquote>
<p>Lucas</p>
</blockquote></td>
<td><blockquote>
<p>Mancini</p>
</blockquote></td>
<td><blockquote>
<p>Italy</p>
</blockquote></td>
<td><blockquote>
<p>51</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>48</p>
</blockquote></td>
<td><blockquote>
<p>Johannes</p>
</blockquote></td>
<td><blockquote>
<p>Van der Berg</p>
</blockquote></td>
<td><blockquote>
<p>Netherlands</p>
</blockquote></td>
<td><blockquote>
<p>66</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>4</p>
</blockquote></td>
<td><blockquote>
<p>BjÃƒÂ¸rn</p>
</blockquote></td>
<td><blockquote>
<p>Hansen</p>
</blockquote></td>
<td><blockquote>
<p>Norway</p>
</blockquote></td>
<td><blockquote>
<p>73</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>49</p>
</blockquote></td>
<td><blockquote>
<p>StanisÃ…â€šaw</p>
</blockquote></td>
<td><blockquote>
<p>WÃƒÂ³jcik</p>
</blockquote></td>
<td><blockquote>
<p>Poland</p>
</blockquote></td>
<td><blockquote>
<p>77</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>34</p>
</blockquote></td>
<td><blockquote>
<p>JoÃƒÂ£o</p>
</blockquote></td>
<td><blockquote>
<p>Fernandes</p>
</blockquote></td>
<td><blockquote>
<p>Portugal</p>
</blockquote></td>
<td><blockquote>
<p>104</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>50</p>
</blockquote></td>
<td><blockquote>
<p>Enrique</p>
</blockquote></td>
<td><blockquote>
<p>MuÃƒÂ±oz</p>
</blockquote></td>
<td><blockquote>
<p>Spain</p>
</blockquote></td>
<td><blockquote>
<p>99</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>51</p>
</blockquote></td>
<td><blockquote>
<p>Joakim</p>
</blockquote></td>
<td><blockquote>
<p>Johansson</p>
</blockquote></td>
<td><blockquote>
<p>Sweden</p>
</blockquote></td>
<td><blockquote>
<p>76</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>53</p>
</blockquote></td>
<td><blockquote>
<p>Phil</p>
</blockquote></td>
<td><blockquote>
<p>Hughes</p>
</blockquote></td>
<td><blockquote>
<p>United</p>
<p>Kingdom</p>
</blockquote></td>
<td><blockquote>
<p>99</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>17</p>
</blockquote></td>
<td><blockquote>
<p>Jack</p>
</blockquote></td>
<td><blockquote>
<p>Smith</p>
</blockquote></td>
<td><blockquote>
<p>USA</p>
</blockquote></td>
<td><blockquote>
<p>99</p>
</blockquote></td>
</tr>
</tbody>
</table>

Q12. Who are the most popular artists?

SELECT COUNT(invoice_line.quantity) AS purchases, artist.name AS artist_name FROM invoice_line JOIN track ON track.track_id = invoice_line.track_id JOIN
album ON album.album_id = track.album_id JOIN artist ON artist.artistid = album.artist_id GROUP BY
2 ORDER BY 1 DESC;

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 74%" />
</colgroup>
<thead>
<tr class="header">
<th>purchases</th>
<th><blockquote>
<p>artist_name</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>124</td>
<td><blockquote>
<p>AC/DC</p>
</blockquote></td>
</tr>
<tr class="even">
<td>75</td>
<td><blockquote>
<p>Alanis Morissette</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>72</td>
<td><blockquote>
<p>Aerosmith</p>
</blockquote></td>
</tr>
<tr class="even">
<td>59</td>
<td><blockquote>
<p>Alice In Chains</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>43</td>
<td><blockquote>
<p>Audioslave</p>
</blockquote></td>
</tr>
<tr class="even">
<td>39</td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>37</td>
<td><blockquote>
<p>Apocalyptica</p>
</blockquote></td>
</tr>
<tr class="even">
<td>23</td>
<td><blockquote>
<p>Buddy Guy</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>18</td>
<td><blockquote>
<p>AntÃƒÂ´nio Carlos Jobim</p>
</blockquote></td>
</tr>
<tr class="even">
<td>15</td>
<td><blockquote>
<p>Black Label Society</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>10</td>
<td><blockquote>
<p>Caetano Veloso</p>
</blockquote></td>
</tr>
<tr class="even">
<td>8</td>
<td><blockquote>
<p>Led Zeppelin</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>7</td>
<td><blockquote>
<p>Chico Buarque</p>
</blockquote></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 74%" />
</colgroup>
<thead>
<tr class="header">
<th>4</th>
<th><blockquote>
<p>Accept</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>4</td>
<td><blockquote>
<p>Bruce Dickinson</p>
</blockquote></td>
</tr>
<tr class="even">
<td>4</td>
<td><blockquote>
<p>Billy Cobham</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>2</td>
<td><blockquote>
<p>Cidade Negra</p>
</blockquote></td>
</tr>
<tr class="even">
<td>2</td>
<td><blockquote>
<p>Chico Science &amp; NaÃƒÂ§ÃƒÂ£o</p>
<p>Zumbi</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>2</td>
<td><blockquote>
<p>Body Count</p>
</blockquote></td>
</tr>
</tbody>
</table>

Q13. Which is the most popular song?

SELECT COUNT(invoice_line.quantity) AS purchases, track.name AS song_name FROM invoice_line JOIN track ON track.track_id = invoice_line.track_id GROUP BY
2 ORDER BY 1 DESC;

<table>
<colgroup>
<col style="width: 20%" />
<col style="width: 79%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>purchases</p>
</blockquote></th>
<th><blockquote>
<p>song_name</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>13</p>
</blockquote></td>
<td><blockquote>
<p>Put The Finger On You</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>10</p>
</blockquote></td>
<td><blockquote>
<p>Night Of The Long Knives</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>9</p>
</blockquote></td>
<td><blockquote>
<p>Snowballed</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>9</p>
</blockquote></td>
<td><blockquote>
<p>Mary Jane</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>9</p>
</blockquote></td>
<td><blockquote>
<p>Behind The Wall Of Sleep</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>8</p>
</blockquote></td>
<td><blockquote>
<p>Dog Eat Dog</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>8</p>
</blockquote></td>
<td><blockquote>
<p>For Those About To Rock (We Salute You)</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>8</p>
</blockquote></td>
<td><blockquote>
<p>Deuces Are Wild</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>8</p>
</blockquote></td>
<td><blockquote>
<p>Evil Woman</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>8</p>
</blockquote></td>
<td><blockquote>
<p>Sunshine</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>7</p>
</blockquote></td>
<td><blockquote>
<p>Hell Ain't A Bad Place To Be</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>7</p>
</blockquote></td>
<td><blockquote>
<p>Breaking The Rules</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>7</p>
</blockquote></td>
<td><blockquote>
<p>Angel</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>7</p>
</blockquote></td>
<td><blockquote>
<p>The Other Side</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>7</p>
</blockquote></td>
<td><blockquote>
<p>You Oughta Know</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>7</p>
</blockquote></td>
<td><blockquote>
<p>The Unforgiven</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>7</p>
</blockquote></td>
<td><blockquote>
<p>Sleeping Village</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>7</p>
</blockquote></td>
<td><blockquote>
<p>I Know Somethin (Bout You)</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>7</p>
</blockquote></td>
<td><blockquote>
<p>Bad Boy Boogie</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>7</p>
</blockquote></td>
<td><blockquote>
<p>Overdose</p>
</blockquote></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 20%" />
<col style="width: 79%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>6</p>
</blockquote></th>
<th><blockquote>
<p>Amazing</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>6</p>
</blockquote></td>
<td><blockquote>
<p>Right Through You</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>6</p>
</blockquote></td>
<td><blockquote>
<p>Love In An Elevator</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>6</p>
</blockquote></td>
<td><blockquote>
<p>Confusion</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>6</p>
</blockquote></td>
<td><blockquote>
<p>Inject The Venom</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>6</p>
</blockquote></td>
<td><blockquote>
<p>Evil Walks</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>6</p>
</blockquote></td>
<td><blockquote>
<p>Spellbound</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>6</p>
</blockquote></td>
<td><blockquote>
<p>All I Really Want</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>6</p>
</blockquote></td>
<td><blockquote>
<p>Perfect</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>6</p>
</blockquote></td>
<td><blockquote>
<p>Forgiven</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>6</p>
</blockquote></td>
<td><blockquote>
<p>You Learn</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>6</p>
</blockquote></td>
<td><blockquote>
<p>Wake Up</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>6</p>
</blockquote></td>
<td><blockquote>
<p>Hypnotize</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>6</p>
</blockquote></td>
<td><blockquote>
<p>Whole Lotta Rosie</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>6</p>
</blockquote></td>
<td><blockquote>
<p>Problem Child</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>6</p>
</blockquote></td>
<td><blockquote>
<p>Bleed The Freak</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>6</p>
</blockquote></td>
<td><blockquote>
<p>Dude (Looks Like A Lady)</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>6</p>
</blockquote></td>
<td><blockquote>
<p>Eat The Rich</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>6</p>
</blockquote></td>
<td><blockquote>
<p>What It Takes</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>5</p>
</blockquote></td>
<td><blockquote>
<p>Sad But True</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>5</p>
</blockquote></td>
<td><blockquote>
<p>Wherever I May Roam</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>5</p>
</blockquote></td>
<td><blockquote>
<p>Exploder</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>5</p>
</blockquote></td>
<td><blockquote>
<p>C.O.D.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>5</p>
</blockquote></td>
<td><blockquote>
<p>Head Over Feet</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>5</p>
</blockquote></td>
<td><blockquote>
<p>Ironic</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>5</p>
</blockquote></td>
<td><blockquote>
<p>Not The Doctor</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>5</p>
</blockquote></td>
<td><blockquote>
<p>Let There Be Rock</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>5</p>
</blockquote></td>
<td><blockquote>
<p>Cryin'</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>5</p>
</blockquote></td>
<td><blockquote>
<p>We Die Young</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>5</p>
</blockquote></td>
<td><blockquote>
<p>Enter Sandman</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>5</p>
</blockquote></td>
<td><blockquote>
<p>N.I.B.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>5</p>
</blockquote></td>
<td><blockquote>
<p>Creeping Death</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>5</p>
</blockquote></td>
<td><blockquote>
<p>Real Thing</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>4</p>
</blockquote></td>
<td><blockquote>
<p>I Can't Remember</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>4</p>
</blockquote></td>
<td><blockquote>
<p>Let's Get It Up</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>4</p>
</blockquote></td>
<td><blockquote>
<p>Cochise</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>4</p>
</blockquote></td>
<td><blockquote>
<p>Hand In My Pocket</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>4</p>
</blockquote></td>
<td><blockquote>
<p>You Oughta Know (Alternate)</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>4</p>
</blockquote></td>
<td><blockquote>
<p>Crazy</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>4</p>
</blockquote></td>
<td><blockquote>
<p>Warning</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>4</p>
</blockquote></td>
<td><blockquote>
<p>Go Down</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>4</p>
</blockquote></td>
<td><blockquote>
<p>Janie's Got A Gun</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>4</p>
</blockquote></td>
<td><blockquote>
<p>Sea Of Sorrow</p>
</blockquote></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 20%" />
<col style="width: 79%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>4</p>
</blockquote></th>
<th><blockquote>
<p>Blind Man</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>4</p>
</blockquote></td>
<td><blockquote>
<p>It Ain't Like That</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>4</p>
</blockquote></td>
<td><blockquote>
<p>Harvester Of Sorrow</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>4</p>
</blockquote></td>
<td><blockquote>
<p>The Wizard</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>4</p>
</blockquote></td>
<td><blockquote>
<p>Man In The Box</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>3</p>
</blockquote></td>
<td><blockquote>
<p>Keep It To Myself (Aka Keep It To Yourself)</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>3</p>
</blockquote></td>
<td><blockquote>
<p>Put You Down</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>3</p>
</blockquote></td>
<td><blockquote>
<p>Doesn't Remind Me</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>3</p>
</blockquote></td>
<td><blockquote>
<p>MeditaÃƒÂ§ÃƒÂ£o</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>3</p>
</blockquote></td>
<td><blockquote>
<p>When My Left Eye Jumps</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>3</p>
</blockquote></td>
<td><blockquote>
<p>Welcome Home (Sanitarium)</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>3</p>
</blockquote></td>
<td><blockquote>
<p>Balls to the Wall</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>3</p>
</blockquote></td>
<td><blockquote>
<p>Por Causa De VocÃƒÂª</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>3</p>
</blockquote></td>
<td><blockquote>
<p>Livin' On The Edge</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>3</p>
</blockquote></td>
<td><blockquote>
<p>Talkin' 'Bout Women Obviously</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>3</p>
</blockquote></td>
<td><blockquote>
<p>Love, Hate, Love</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>3</p>
</blockquote></td>
<td><blockquote>
<p>Let Me Love You Baby</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>3</p>
</blockquote></td>
<td><blockquote>
<p>Master Of Puppets</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>Stone Crazy</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>I am the Highway</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>You Shook Me</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>Like A Bird</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>Getaway Car</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>Show Me How to Live</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>What You Are</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>Like a Stone</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>Shadow on the Sun</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>Bring'em Back Alive</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>Do what cha wanna</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>The Curse</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>All For You</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>Carolina</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>Canta, Canta Mais</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>The Real Problem</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>Pretty Baby</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>Leave My Girl Alone</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>My Time After Awhile</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>Blood In The Wall</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>A.N.D.R.O.T.A.Z.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>Black Sabbath</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>Corcovado (Quiet Nights Of Quiet Stars)</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Prenda Minha</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>The Worm</p>
</blockquote></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 20%" />
<col style="width: 79%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>1</p>
</blockquote></th>
<th><blockquote>
<p>Chemical Wedding</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Dandelion</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Moon germs</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>You Shook Me(2)</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Gasoline</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Set It Off</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Light My Way</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>The Last Remaining Light</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Dazed and Confused</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>A Cor Do Sol</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Travelling Riverside Blues</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>O Que SerÃƒÂ¡ (Ãƒâ‚¬ Flor Da Terra)</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Sozinho (Hitmakers Classic Radio Edit)</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Out Of Exile</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>King In Crimson</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>What is and Should Never Be</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>#1 Zero</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>DrÃƒÂ£o</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Maracatu AtÃƒÂ´mico [Trip Hop]</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>The pleasant pheasant</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>First Time I Met The Blues</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>She Suits Me To A Tee</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Too Many Ways (Alternate)</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Princess of the Dawn</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Samba De Orly</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>13 Years Of Grief</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Essa MoÃƒÂ§a Ta Diferente</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Super Terrorizer</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Lost My Better Half</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Vida Boa</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Intro/ Low Down</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Enquanto O Mundo Explode</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>I Can't Quit You Baby(2)</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>A Sombra Da Maldade</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Killing Floor</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Minha Historia</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Somethin' Else</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Bored To Tears</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Gates Of Urizen</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>No More Tears</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Odara</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Desafinado</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Garota De Ipanema</p>
</blockquote></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 20%" />
<col style="width: 79%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>1</p>
</blockquote></th>
<th><blockquote>
<p>Samba De Uma Nota SÃƒÂ³ (One Note Samba)</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Ligia</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Fotografia</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Dindi (Dindi)</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Se Todos Fossem Iguais A VocÃƒÂª</p>
<p>(Instrumental)</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Falando De Amor</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Angela</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Outra Vez</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>O Boto (BÃƒÂ´to)</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Sozinho (CaÃƒÂªdrum 'n' Bass)</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Drown Me Slowly</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Vai Passar</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Born To Booze</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Terra</p>
</blockquote></td>
</tr>
</tbody>
</table>

Q14. What are the average prices of different types of music?

SELECT genre,ROUND(AVG(total_spent)) AS total_spent FROM (SELECT genre.name AS genre, SUM(total) AS total_spent
FROM invoice JOIN invoice_line ON invoice.invoice_id = invoice_line.invoice_id JOIN
track ON track.track_id = invoice_line.track_id JOIN genre ON genre.genre_id = track.genre_id GROUP BY 1) AS abc GROUP BY genre;

<table>
<colgroup>
<col style="width: 57%" />
<col style="width: 42%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>genre</p>
</blockquote></th>
<th><blockquote>
<p>total_spent</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>Reggae</p>
</blockquote></td>
<td><blockquote>
<p>19</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Alternative &amp;</p>
<p>Punk</p>
</blockquote></td>
<td><blockquote>
<p>100</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Latin</p>
</blockquote></td>
<td><blockquote>
<p>146</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Blues</p>
</blockquote></td>
<td><blockquote>
<p>227</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Jazz</p>
</blockquote></td>
<td><blockquote>
<p>259</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Metal</p>
</blockquote></td>
<td><blockquote>
<p>729</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Rock</p>
</blockquote></td>
<td><blockquote>
<p>3531</p>
</blockquote></td>
</tr>
</tbody>
</table>

# Q15. What are the most popular countries for music purchases?

## SELECT

> COUNT(invoice_line.quantity) AS purchases, customer.country

## FROM

> invoice_line JOIN
>
> invoice ON invoice.invoice_id = invoice_line.invoice_id JOIN
>
> customer ON customer.customer_id = invoice.customer_id GROUP BY
>
> country ORDER BY
>
> purchases DESC;

<table>
<colgroup>
<col style="width: 42%" />
<col style="width: 57%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>purchases</p>
</blockquote></th>
<th><blockquote>
<p>country</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>1051</p>
</blockquote></td>
<td><blockquote>
<p>USA</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>541</p>
</blockquote></td>
<td><blockquote>
<p>Canada</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>393</p>
</blockquote></td>
<td><blockquote>
<p>France</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>338</p>
</blockquote></td>
<td><blockquote>
<p>Germany</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>322</p>
</blockquote></td>
<td><blockquote>
<p>Brazil</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>276</p>
</blockquote></td>
<td><blockquote>
<p>Czech</p>
<p>Republic</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>248</p>
</blockquote></td>
<td><blockquote>
<p>United</p>
<p>Kingdom</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>187</p>
</blockquote></td>
<td><blockquote>
<p>Portugal</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>185</p>
</blockquote></td>
<td><blockquote>
<p>India</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>116</p>
</blockquote></td>
<td><blockquote>
<p>Ireland</p>
</blockquote></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 42%" />
<col style="width: 57%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>99</p>
</blockquote></th>
<th><blockquote>
<p>Spain</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>98</p>
</blockquote></td>
<td><blockquote>
<p>Chile</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>82</p>
</blockquote></td>
<td><blockquote>
<p>Australia</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>80</p>
</blockquote></td>
<td><blockquote>
<p>Finland</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>79</p>
</blockquote></td>
<td><blockquote>
<p>Hungary</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>77</p>
</blockquote></td>
<td><blockquote>
<p>Poland</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>76</p>
</blockquote></td>
<td><blockquote>
<p>Sweden</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>73</p>
</blockquote></td>
<td><blockquote>
<p>Norway</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>70</p>
</blockquote></td>
<td><blockquote>
<p>Austria</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>66</p>
</blockquote></td>
<td><blockquote>
<p>Netherlands</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>61</p>
</blockquote></td>
<td><blockquote>
<p>Belgium</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>51</p>
</blockquote></td>
<td><blockquote>
<p>Italy</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>40</p>
</blockquote></td>
<td><blockquote>
<p>Argentina</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>38</p>
</blockquote></td>
<td><blockquote>
<p>Denmark</p>
</blockquote></td>
</tr>
</tbody>
</table>

Conclusion:
        The insights gained from the SQL queries reveal significant information about the music store's operations. Understanding customer preferences and spending habits, identifying top-selling genres, recognizing high-value customers, and highlighting popular artists and tracks can help optimize the store's performance and enhance customer satisfaction. These insights can inform strategic decisions related to marketing, inventory management, and customer engagement initiatives.
