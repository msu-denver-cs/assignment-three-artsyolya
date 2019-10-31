# Assignment #3 README

I included the changes made for assignment 3 using git diff. 

The changes include:
	- adding a navigation bar on every page and adding styling to every page, except for the login page
	- installing the 'devise' gem and adding authentication that requires a login before accessing the cars pages
	- adding a log-out link to almost every page and styling it
---------------------------------------------------------------------------------------


diff --git a/.idea/.generators b/.idea/.generators
index b046a07..522b8fb 100644
--- a/.idea/.generators
+++ b/.idea/.generators
@@ -5,4 +5,4 @@ You are allowed to:
 2. Remove generators
 3. Add installed generators
 To add new installed generators automatically delete this file and reload the project.
---><GeneratorsGroup><Generator name="active_record:application_record" /><Generator name="application_record" /><Generator name="assets" /><Generator name="channel" /><Generator name="coffee:assets" /><Generator name="controller" /><Generator name="generator" /><Generator name="helper" /><Generator name="integration_test" /><Generator name="jbuilder" /><Generator name="job" /><Generator name="js:assets" /><Generator name="mailer" /><Generator name="migration" /><Generator name="model" /><Generator name="resource" /><Generator name="scaffold" /><Generator name="scaffold_controller" /><Generator name="system_test" /><Generator name="task" /><Generator name="test_unit:generator" /><Generator name="test_unit:plugin" /></GeneratorsGroup></Settings>
+--><GeneratorsGroup><Generator name="active_record:application_record" /><Generator name="active_record:devise" /><Generator name="application_record" /><Generator name="assets" /><Generator name="channel" /><Generator name="coffee:assets" /><Generator name="controller" /><Generator name="devise" /><Generator name="devise:controllers" /><Generator name="devise:install" /><Generator name="devise:views" /><Generator name="generator" /><Generator name="helper" /><Generator name="integration_test" /><Generator name="jbuilder" /><Generator name="job" /><Generator name="js:assets" /><Generator name="mailer" /><Generator name="migration" /><Generator name="model" /><Generator name="mongoid:devise" /><Generator name="resource" /><Generator name="responders:install" /><Generator name="responders_controller" /><Generator name="scaffold" /><Generator name="scaffold_controller" /><Generator name="system_test" /><Generator name="task" /><Generator name="test_unit:generator" /><Generator name="test_unit:plugin" /></GeneratorsGroup></Settings>^M
diff --git a/.idea/buildcar.iml b/.idea/buildcar.iml
index a89f7e4..960fbe3 100644
--- a/.idea/buildcar.iml
+++ b/.idea/buildcar.iml
@@ -40,6 +40,7 @@
     <orderEntry type="library" scope="PROVIDED" name="addressable (v2.7.0, rbenv: 2.5.1) [gem]" level="application" />
     <orderEntry type="library" scope="PROVIDED" name="archive-zip (v0.12.0, rbenv: 2.5.1) [gem]" level="application" />
     <orderEntry type="library" scope="PROVIDED" name="arel (v9.0.0, rbenv: 2.5.1) [gem]" level="application" />
+    <orderEntry type="library" scope="PROVIDED" name="bcrypt (v3.1.13, rbenv: 2.5.1) [gem]" level="application" />
     <orderEntry type="library" scope="PROVIDED" name="bindex (v0.8.1, rbenv: 2.5.1) [gem]" level="application" />
     <orderEntry type="library" scope="PROVIDED" name="bootsnap (v1.4.5, rbenv: 2.5.1) [gem]" level="application" />
     <orderEntry type="library" scope="PROVIDED" name="builder (v3.2.3, rbenv: 2.5.1) [gem]" level="application" />
@@ -53,6 +54,7 @@
     <orderEntry type="library" scope="PROVIDED" name="coffee-script-source (v1.12.2, rbenv: 2.5.1) [gem]" level="application" />
     <orderEntry type="library" scope="PROVIDED" name="concurrent-ruby (v1.1.5, rbenv: 2.5.1) [gem]" level="application" />
     <orderEntry type="library" scope="PROVIDED" name="crass (v1.0.4, rbenv: 2.5.1) [gem]" level="application" />
+    <orderEntry type="library" scope="PROVIDED" name="devise (v4.7.1, rbenv: 2.5.1) [gem]" level="application" />
     <orderEntry type="library" scope="PROVIDED" name="erubi (v1.8.0, rbenv: 2.5.1) [gem]" level="application" />
     <orderEntry type="library" scope="PROVIDED" name="execjs (v2.7.0, rbenv: 2.5.1) [gem]" level="application" />
     <orderEntry type="library" scope="PROVIDED" name="ffi (v1.11.1, rbenv: 2.5.1) [gem]" level="application" />
@@ -72,6 +74,7 @@
     <orderEntry type="library" scope="PROVIDED" name="msgpack (v1.3.1, rbenv: 2.5.1) [gem]" level="application" />
     <orderEntry type="library" scope="PROVIDED" name="nio4r (v2.5.1, rbenv: 2.5.1) [gem]" level="application" />
     <orderEntry type="library" scope="PROVIDED" name="nokogiri (v1.10.4, rbenv: 2.5.1) [gem]" level="application" />
+    <orderEntry type="library" scope="PROVIDED" name="orm_adapter (v0.5.0, rbenv: 2.5.1) [gem]" level="application" />
     <orderEntry type="library" scope="PROVIDED" name="public_suffix (v4.0.1, rbenv: 2.5.1) [gem]" level="application" />
     <orderEntry type="library" scope="PROVIDED" name="puma (v3.12.1, rbenv: 2.5.1) [gem]" level="application" />
     <orderEntry type="library" scope="PROVIDED" name="rack (v2.0.7, rbenv: 2.5.1) [gem]" level="application" />
@@ -84,6 +87,7 @@
     <orderEntry type="library" scope="PROVIDED" name="rb-fsevent (v0.10.3, rbenv: 2.5.1) [gem]" level="application" />
     <orderEntry type="library" scope="PROVIDED" name="rb-inotify (v0.10.0, rbenv: 2.5.1) [gem]" level="application" />
     <orderEntry type="library" scope="PROVIDED" name="regexp_parser (v1.6.0, rbenv: 2.5.1) [gem]" level="application" />
+    <orderEntry type="library" scope="PROVIDED" name="responders (v3.0.0, rbenv: 2.5.1) [gem]" level="application" />
     <orderEntry type="library" scope="PROVIDED" name="ruby_dep (v1.5.0, rbenv: 2.5.1) [gem]" level="application" />
     <orderEntry type="library" scope="PROVIDED" name="rubyzip (v1.2.4, rbenv: 2.5.1) [gem]" level="application" />
     <orderEntry type="library" scope="PROVIDED" name="sass (v3.7.4, rbenv: 2.5.1) [gem]" level="application" />
@@ -102,6 +106,7 @@
     <orderEntry type="library" scope="PROVIDED" name="turbolinks-source (v5.2.0, rbenv: 2.5.1) [gem]" level="application" />
     <orderEntry type="library" scope="PROVIDED" name="tzinfo (v1.2.5, rbenv: 2.5.1) [gem]" level="application" />
     <orderEntry type="library" scope="PROVIDED" name="uglifier (v4.1.20, rbenv: 2.5.1) [gem]" level="application" />
+    <orderEntry type="library" scope="PROVIDED" name="warden (v1.2.8, rbenv: 2.5.1) [gem]" level="application" />
     <orderEntry type="library" scope="PROVIDED" name="web-console (v3.7.0, rbenv: 2.5.1) [gem]" level="application" />
     <orderEntry type="library" scope="PROVIDED" name="websocket-driver (v0.7.1, rbenv: 2.5.1) [gem]" level="application" />
     <orderEntry type="library" scope="PROVIDED" name="websocket-extensions (v0.1.4, rbenv: 2.5.1) [gem]" level="application" />
diff --git a/Gemfile b/Gemfile
index c4026f7..82dde00 100644
--- a/Gemfile
+++ b/Gemfile
@@ -60,3 +60,6 @@ end
 
 # Windows does not include zoneinfo files, so bundle the tzinfo-data gem
 gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
+
+# Authentication gem
+gem 'devise'
diff --git a/Gemfile.lock b/Gemfile.lock
index c48ac7a..7383058 100644
--- a/Gemfile.lock
+++ b/Gemfile.lock
@@ -47,6 +47,7 @@ GEM
     archive-zip (0.12.0)
       io-like (~> 0.3.0)
     arel (9.0.0)
+    bcrypt (3.1.13)
     bindex (0.8.1)
     bootsnap (1.4.5)
       msgpack (~> 1.0)
@@ -74,6 +75,12 @@ GEM
     coffee-script-source (1.12.2)
     concurrent-ruby (1.1.5)
     crass (1.0.4)
+    devise (4.7.1)
+      bcrypt (~> 3.0)
+      orm_adapter (~> 0.1)
+      railties (>= 4.1.0)
+      responders
+      warden (~> 1.2.3)
     erubi (1.8.0)
     execjs (2.7.0)
     ffi (1.11.1)
@@ -104,6 +111,7 @@ GEM
     nio4r (2.5.1)
     nokogiri (1.10.4)
       mini_portile2 (~> 2.4.0)
+    orm_adapter (0.5.0)
     public_suffix (4.0.1)
     puma (3.12.1)
     rack (2.0.7)
@@ -138,6 +146,9 @@ GEM
     rb-inotify (0.10.0)
       ffi (~> 1.0)
     regexp_parser (1.6.0)
+    responders (3.0.0)
+      actionpack (>= 5.0)
+      railties (>= 5.0)
     ruby_dep (1.5.0)
     rubyzip (1.2.4)
     sass (3.7.4)
@@ -176,6 +187,8 @@ GEM
       thread_safe (~> 0.1)
     uglifier (4.1.20)
       execjs (>= 0.3.0, < 3)
+    warden (1.2.8)
+      rack (>= 2.0.6)
     web-console (3.7.0)
       actionview (>= 5.0)
       activemodel (>= 5.0)
@@ -196,6 +209,7 @@ DEPENDENCIES
   capybara (>= 2.15)
   chromedriver-helper
   coffee-rails (~> 4.2)
+  devise
   jbuilder (~> 2.5)
   listen (>= 3.0.5, < 3.2)
   puma (~> 3.11)
diff --git a/app/assets/stylesheets/application.css b/app/assets/stylesheets/application.css
index d05ea0f..4d8e539 100644
--- a/app/assets/stylesheets/application.css
+++ b/app/assets/stylesheets/application.css
@@ -13,3 +13,72 @@
  *= require_tree .
  *= require_self
  */
+
+.log-out {
+    display: inline-block;
+    padding: 10px;
+    border-style: solid;
+    border-color: #666666;
+    border-radius: 5px;
+    position: relative;
+    top: -15px;
+    float: right;
+
+}
+.log-out:hover {
+    background-color: lightblue;
+}
+.body-content {
+    margin: auto;
+    width: 50%;
+}
+.nav-bar{
+    padding: 10px;
+    margin-right: -2px;
+    background-color: lightgray;
+    display: inline-block;
+    border-top-right-radius: 10px;
+    margin-top: 10px;
+}
+.nav-bar:hover {
+    background-color: lightblue;
+}
+.active-page {
+    background-color: #999999;
+}
+a:link, a:visited, a:active {
+    color: black;
+    text-decoration: none;
+}
+a:hover {
+    background: none;
+}
+.page-content {
+    background-color: #f2f2f2;
+    padding: 20px;
+    max-width: 700px;
+    border-style: solid;
+    border-top-right-radius: 20px;
+    border-bottom-left-radius: 20px;
+    border-color: #999999;
+
+}
+h1 {
+    text-align: center;
+}
+.links {
+    background-color: lightgray;
+    border-radius: 5px;
+    padding: 10px;
+    margin: 2px;
+    display: inline-block;
+}
+.links:hover {
+    background: lightblue;
+}
+.table {
+    column-count: 3;
+}
+.bold {
+    font-weight: bold;
+}
diff --git a/app/controllers/cars_controller.rb b/app/controllers/cars_controller.rb
index a977786..e02bbb0 100644
--- a/app/controllers/cars_controller.rb
+++ b/app/controllers/cars_controller.rb
@@ -1,4 +1,5 @@
 class CarsController < ApplicationController
+  before_action :authenticate_user!
   before_action :set_car, only: [:show, :edit, :update, :destroy]

diff --git a/app/controllers/makes_controller.rb b/app/controllers/makes_controller.rb
index 19460d9..146b68c 100644
--- a/app/controllers/makes_controller.rb
+++ b/app/controllers/makes_controller.rb
@@ -1,4 +1,5 @@
 class MakesController < ApplicationController
+  before_action :authenticate_user!
   before_action :set_make, only: [:show, :edit, :update, :destroy]

diff --git a/app/controllers/parts_controller.rb b/app/controllers/parts_controller.rb
index 2e52866..024a3e8 100644
--- a/app/controllers/parts_controller.rb
+++ b/app/controllers/parts_controller.rb
@@ -1,4 +1,5 @@
 class PartsController < ApplicationController
+  before_action :authenticate_user!
   before_action :set_part, only: [:show, :edit, :update, :destroy]
 

diff --git a/app/views/cars/_form.html.erb b/app/views/cars/_form.html.erb
index e4a77f2..d6af785 100644
--- a/app/views/cars/_form.html.erb
+++ b/app/views/cars/_form.html.erb

@@ -11,21 +10,28 @@
     </div>
   <% end %>
 
-  <div class="field">
+  <div class="field"><!-- Input car model -->
     <%= form.label :model %>
     <%= form.text_field :model %>
   </div>
 
-  <div class="field">
+  <div class="field"><!-- Select car make -->
     <%= form.label :make_id %>
-    <%= form.text_field :make_id %>
+    <%= form.collection_select(:make_id, Make.all, :id, :name) %>
   </div>
 
-  <div class="field">
+  <div class="field"><!-- Input car VIN -->
     <%= form.label :vin %>
     <%= form.text_field :vin %>
   </div>
+  <div class="field"><!-- Select car parts -->
+    <br>
+    <%= form.label :part_id %>
+    <br>
+    <div class="table"><%= form.collection_check_boxes(:part_ids, Part.all, :id, :name) %><br></div>
+  </div>
 
+  <br>
   <div class="actions">
     <%= form.submit %>
   </div>
diff --git a/app/views/cars/edit.html.erb b/app/views/cars/edit.html.erb
index 2a4d04f..f8909fe 100644
--- a/app/views/cars/edit.html.erb
+++ b/app/views/cars/edit.html.erb
@@ -1,6 +1,19 @@
-<h1>Editing Car</h1>
+<div class="body-content">
+  <div class="log-out"><%= link_to 'Log out', destroy_user_session_path, method: :delete %></div>
+  <br>
 
-<%= render 'form', car: @car %>
+  <!--Navigation bar -->
+  <div class="nav-bar active-page"><%= link_to "Cars", cars_url %></div>
+  <div class="nav-bar"><%= link_to "Car Makes", makes_url %></div>
+  <div class="nav-bar"><%= link_to "Car Parts", parts_url %></div>
 
-<%= link_to 'Show', @car %> |
-<%= link_to 'Back', cars_path %>
+  <div class="page-content">
+    <h1>Editing Car</h1>
+
+    <%= render 'form', car: @car %>
+
+    <br>
+    <div class="links"><%= link_to 'Show', @car %></div>
+    <div class="links"><%= link_to 'Back', cars_path %></div>
+  </div>
+</div>
diff --git a/app/views/cars/index.html.erb b/app/views/cars/index.html.erb
index ade5fea..d4ff162 100644
--- a/app/views/cars/index.html.erb
+++ b/app/views/cars/index.html.erb
@@ -1,31 +1,53 @@
 <p id="notice"><%= notice %></p>
 
-<h1>Cars</h1>
-
-<table>
-  <thead>
-    <tr>
-      <th>Model</th>
-      <th>Make</th>
-      <th>Vin</th>
-      <th colspan="3"></th>
-    </tr>
-  </thead>
-
-  <tbody>
-    <% @cars.each do |car| %>
-      <tr>
-        <td><%= car.model %></td>
-        <td><%= car.make %></td>
-        <td><%= car.vin %></td>
-        <td><%= link_to 'Show', car %></td>
-        <td><%= link_to 'Edit', edit_car_path(car) %></td>
-        <td><%= link_to 'Destroy', car, method: :delete, data: { confirm: 'Are you sure?' } %></td>
-      </tr>
+<div class="body-content">
+  <div class="log-out"><%= link_to 'Log out', destroy_user_session_path, method: :delete %></div>
+  <br>
+
+  <!--Navigation bar -->
+  <div class="nav-bar active-page"><%= link_to "Cars", cars_url %></div>
+  <div class="nav-bar"><%= link_to "Car Makes", makes_url %></div>
+  <div class="nav-bar"><%= link_to "Car Parts", parts_url %></div>
+
+  <div class="page-content">
+    <h1>Cars</h1>
+
+    <!--Search function -->
+    <%= form_tag(search_cars_url, method: "get") do %>
+      <%= label_tag(:query, "Search for car models:") %>
+      <%= text_field_tag(:query) %>
+      <%= submit_tag("Search") %>
     <% end %>
-  </tbody>
-</table>
+    <br>
+
+    <table>
+      <thead>
+        <tr>
+          <th>Model</th>
+          <th>Make</th>
+          <th>Country of Origin</th>
+          <th>Vin</th>
+          <th colspan="4"></th>
+        </tr>
+      </thead>
+
+      <tbody>
+        <% @cars.each do |car| %>
+          <tr>
+            <td><%= car.model %></td>
+            <td><%= car.make.name %></td>
+            <td><%= car.make.country %></td>
+            <td><%= car.vin %></td>
+            <td class="links"><%= link_to 'Show', car %></td>
+            <td class="links"><%= link_to 'Edit', edit_car_path(car) %></td>
+            <td class="links"><%= link_to 'Destroy', car, method: :delete, data: { confirm: 'Are you sure?' } %></td>
+          </tr>
+        <% end %>
+      </tbody>
+    </table>
 
-<br>
+    <br>
 
-<%= link_to 'New Car', new_car_path %>
+    <div class="links"><%= link_to 'New Car', new_car_path %></div>
+  </div>
+</div>
\ No newline at end of file
diff --git a/app/views/cars/new.html.erb b/app/views/cars/new.html.erb
index f07fce0..4b0b4c4 100644
--- a/app/views/cars/new.html.erb
+++ b/app/views/cars/new.html.erb
@@ -1,5 +1,17 @@
-<h1>New Car</h1>
+<div class="body-content">
+  <div class="log-out"><%= link_to 'Log out', destroy_user_session_path, method: :delete %></div>
+  <br>
 
-<%= render 'form', car: @car %>
+  <!--Navigation bar -->
+  <div class="nav-bar active-page"><%= link_to "Cars", cars_url %></div>
+  <div class="nav-bar"><%= link_to "Car Makes", makes_url %></div>
+  <div class="nav-bar"><%= link_to "Car Parts", parts_url %></div>
 
-<%= link_to 'Back', cars_path %>
+  <div class="page-content">
+    <h1>New Car</h1>
+
+    <%= render 'form', car: @car %>
+
+    <div class="links"><%= link_to 'Back', cars_path %></div>
+  </div>
+</div>
diff --git a/app/views/cars/show.html.erb b/app/views/cars/show.html.erb
index abc4b18..76bdbaf 100644
--- a/app/views/cars/show.html.erb
+++ b/app/views/cars/show.html.erb
@@ -1,19 +1,44 @@
 <p id="notice"><%= notice %></p>
 
-<p>
-  <strong>Model:</strong>
-  <%= @car.model %>
-</p>
-
-<p>
-  <strong>Make:</strong>
-  <%= @car.make %>
-</p>
-
-<p>
-  <strong>Vin:</strong>
-  <%= @car.vin %>
-</p>
-
-<%= link_to 'Edit', edit_car_path(@car) %> |
-<%= link_to 'Back', cars_path %>
+<div class="body-content">
+  <div class="log-out"><%= link_to 'Log out', destroy_user_session_path, method: :delete %></div>
+  <br>
+
+  <!--Navigation bar -->
+  <div class="nav-bar active-page"><%= link_to "Cars", cars_url %></div>
+  <div class="nav-bar"><%= link_to "Car Makes", makes_url %></div>
+  <div class="nav-bar"><%= link_to "Car Parts", parts_url %></div>
+
+  <div class="page-content">
+    <h1>Car Details</h1>
+    <p>
+      <strong>Model:</strong>
+      <%= @car.model %>
+    </p>
+
+    <p>
+      <strong>Make:</strong>
+      <%= @car.make.name %>
+    </p>
+
+    <p>
+      <strong>Country of Origin:</strong>
+      <%= @car.make.country %>
+    </p>
+
+    <p>
+      <strong>Vin:</strong>
+      <%= @car.vin %>
+    </p>
+
+    <strong>Parts:</strong>
+    <ul>
+      <% @car.parts.each do |part| %>
+        <li><%= part.name %></li>
+      <% end %>
+    </ul>
+
+    <div class="links"><%= link_to 'Edit', edit_car_path(@car) %></div>
+    <div class="links"><%= link_to 'Back', cars_path %></div>
+  </div>
+</div>
diff --git a/app/views/makes/_form.html.erb b/app/views/makes/_form.html.erb
index de13d04..f4d030f 100644
--- a/app/views/makes/_form.html.erb
+++ b/app/views/makes/_form.html.erb
@@ -11,12 +11,12 @@
     </div>
   <% end %>
 
-  <div class="field">
+  <div class="field"><!-- Input car make  -->
     <%= form.label :name %>
     <%= form.text_field :name %>
   </div>
 
-  <div class="field">
+  <div class="field"><!-- Input car make country -->
     <%= form.label :country %>
     <%= form.text_field :country %>
   </div>
diff --git a/app/views/makes/edit.html.erb b/app/views/makes/edit.html.erb
index 17b5dcf..8f2684a 100644
--- a/app/views/makes/edit.html.erb
+++ b/app/views/makes/edit.html.erb
@@ -1,6 +1,18 @@
-<h1>Editing Make</h1>
+<div class="body-content">
+  <div class="log-out"><%= link_to 'Log out', destroy_user_session_path, method: :delete %></div>
+  <br>
 
-<%= render 'form', make: @make %>
+  <!--Navigation bar -->
+  <div class="nav-bar"><%= link_to "Cars", cars_url %></div>
+  <div class="nav-bar active-page"><%= link_to "Car Makes", makes_url %></div>
+  <div class="nav-bar"><%= link_to "Car Parts", parts_url %></div>
 
-<%= link_to 'Show', @make %> |
-<%= link_to 'Back', makes_path %>
+  <div class="page-content">
+    <h1>Editing Car Make</h1>
+
+    <%= render 'form', make: @make %>
+
+    <div class="links"><%= link_to 'Show', @make %></div>
+    <div class="links"> <%= link_to 'Back', makes_path %></div>
+  </div>
+</div>
diff --git a/app/views/makes/index.html.erb b/app/views/makes/index.html.erb
index f675780..5bc7808 100644
--- a/app/views/makes/index.html.erb
+++ b/app/views/makes/index.html.erb
@@ -1,29 +1,48 @@
 <p id="notice"><%= notice %></p>
 
-<h1>Makes</h1>
-
-<table>
-  <thead>
-    <tr>
-      <th>Name</th>
-      <th>Country</th>
-      <th colspan="3"></th>
-    </tr>
-  </thead>
-
-  <tbody>
-    <% @makes.each do |make| %>
-      <tr>
-        <td><%= make.name %></td>
-        <td><%= make.country %></td>
-        <td><%= link_to 'Show', make %></td>
-        <td><%= link_to 'Edit', edit_make_path(make) %></td>
-        <td><%= link_to 'Destroy', make, method: :delete, data: { confirm: 'Are you sure?' } %></td>
-      </tr>
+<div class="body-content">
+  <div class="log-out"><%= link_to 'Log out', destroy_user_session_path, method: :delete %></div>
+  <br>
+
+  <!--Navigation bar -->
+  <div class="nav-bar"><%= link_to "Cars", cars_url %></div>
+  <div class="nav-bar active-page"><%= link_to "Car Makes", makes_url %></div>
+  <div class="nav-bar"><%= link_to "Car Parts", parts_url %></div>
+
+  <div class="page-content">
+    <h1>Car Makes</h1>
+
+    <!--Search function -->
+    <%= form_tag(search_makes_url, method: "get") do %>
+      <%= label_tag(:query, "Search for car make:") %>
+      <%= text_field_tag(:query) %>
+      <%= submit_tag("Search") %>
     <% end %>
-  </tbody>
-</table>
 
-<br>
+    <table>
+      <thead>
+        <tr>
+          <th>Name</th>
+          <th>Country</th>
+          <th colspan="3"></th>
+        </tr>
+      </thead>
+
+      <tbody>
+        <% @makes.each do |make| %>
+          <tr>
+            <td><%= make.name %></td>
+            <td><%= make.country %></td>
+            <td class="links"><%= link_to 'Show', make %></td>
+            <td class="links"><%= link_to 'Edit', edit_make_path(make) %></td>
+            <td class="links"><%= link_to 'Destroy', make, method: :delete, data: { confirm: 'Are you sure?' } %></td>
+          </tr>
+        <% end %>
+      </tbody>
+    </table>
+
+    <br>
 
-<%= link_to 'New Make', new_make_path %>
+    <div class="links"><%= link_to 'New Make', new_make_path %></div>
+  </div>
+</div>
\ No newline at end of file
diff --git a/app/views/makes/new.html.erb b/app/views/makes/new.html.erb
index acc6f3b..d1c1aa3 100644
--- a/app/views/makes/new.html.erb
+++ b/app/views/makes/new.html.erb
@@ -1,5 +1,17 @@
-<h1>New Make</h1>
+<div class="body-content">
+  <div class="log-out"><%= link_to 'Log out', destroy_user_session_path, method: :delete %></div>
+  <br>
 
-<%= render 'form', make: @make %>
+  <!--Navigation bar -->
+  <div class="nav-bar"><%= link_to "Cars", cars_url %></div>
+  <div class="nav-bar active-page"><%= link_to "Car Makes", makes_url %></div>
+  <div class="nav-bar"><%= link_to "Car Parts", parts_url %></div>
 
-<%= link_to 'Back', makes_path %>
+  <div class="page-content">
+    <h1>New Car Make</h1>
+
+    <%= render 'form', make: @make %>
+
+    <div class="links"><%= link_to 'Back', makes_path %></div>
+  </div>
+</div>
diff --git a/app/views/makes/show.html.erb b/app/views/makes/show.html.erb
index f02d66d..5c9d7b2 100644
--- a/app/views/makes/show.html.erb
+++ b/app/views/makes/show.html.erb
@@ -1,14 +1,33 @@
 <p id="notice"><%= notice %></p>
 
-<p>
-  <strong>Name:</strong>
-  <%= @make.name %>
-</p>
-
-<p>
-  <strong>Country:</strong>
-  <%= @make.country %>
-</p>
-
-<%= link_to 'Edit', edit_make_path(@make) %> |
-<%= link_to 'Back', makes_path %>
+<div class="body-content">
+  <div class="log-out"><%= link_to 'Log out', destroy_user_session_path, method: :delete %></div>
+  <br>
+
+  <!--Navigation bar -->
+  <div class="nav-bar"><%= link_to "Cars", cars_url %></div>
+  <div class="nav-bar active-page"><%= link_to "Car Makes", makes_url %></div>
+  <div class="nav-bar"><%= link_to "Car Parts", parts_url %></div>
+
+  <div class="page-content">
+    <h1>Car Make</h1>
+    <p>
+      <strong>Name:</strong>
+      <%= @make.name %>
+    </p>
+
+    <p>
+      <strong>Country:</strong>
+      <%= @make.country %>
+    </p>
+
+    <ul>
+      <% @make.cars.each do |car| %>
+        <li><%= car.model %></li>
+      <% end %>
+    </ul>
+
+    <div class="links"><%= link_to 'Edit', edit_make_path(@make) %></div>
+    <div class="links"><%= link_to 'Back', makes_path %></div>
+  </div>
+</div>
diff --git a/app/views/parts/_form.html.erb b/app/views/parts/_form.html.erb
index 6cd8700..15179e0 100644
--- a/app/views/parts/_form.html.erb
+++ b/app/views/parts/_form.html.erb
@@ -11,6 +11,7 @@
     </div>
   <% end %>
 
+  <!--Input car make -->
   <div class="field">
     <%= form.label :name %>
     <%= form.text_field :name %>
diff --git a/app/views/parts/edit.html.erb b/app/views/parts/edit.html.erb
index b88c790..f5cddc6 100644
--- a/app/views/parts/edit.html.erb
+++ b/app/views/parts/edit.html.erb
@@ -1,6 +1,18 @@
-<h1>Editing Part</h1>
+<div class="body-content">
+  <div class="log-out"><%= link_to 'Log out', destroy_user_session_path, method: :delete %></div>
+  <br>
 
-<%= render 'form', part: @part %>
+  <!--Navigation bar -->
+  <div class="nav-bar"><%= link_to "Cars", cars_url %></div>
+  <div class="nav-bar"><%= link_to "Car Makes", makes_url %></div>
+  <div class="nav-bar active-page"><%= link_to "Car Parts", parts_url %></div>
 
-<%= link_to 'Show', @part %> |
-<%= link_to 'Back', parts_path %>
+  <div class="page-content">
+    <h1>Editing Car Part</h1>
+
+    <%= render 'form', part: @part %>
+
+    <div class="links"><%= link_to 'Show', @part %></div>
+    <div class="links"><%= link_to 'Back', parts_path %></div>
+  </div>
+</div>
diff --git a/app/views/parts/index.html.erb b/app/views/parts/index.html.erb
index bbc1cf9..6170f4e 100644
--- a/app/views/parts/index.html.erb
+++ b/app/views/parts/index.html.erb
@@ -1,27 +1,46 @@
 <p id="notice"><%= notice %></p>
 
-<h1>Parts</h1>
-
-<table>
-  <thead>
-    <tr>
-      <th>Name</th>
-      <th colspan="3"></th>
-    </tr>
-  </thead>
-
-  <tbody>
-    <% @parts.each do |part| %>
-      <tr>
-        <td><%= part.name %></td>
-        <td><%= link_to 'Show', part %></td>
-        <td><%= link_to 'Edit', edit_part_path(part) %></td>
-        <td><%= link_to 'Destroy', part, method: :delete, data: { confirm: 'Are you sure?' } %></td>
-      </tr>
+<div class="body-content">
+  <div class="log-out"><%= link_to 'Log out', destroy_user_session_path, method: :delete %></div>
+  <br>
+
+  <!--Navigation bar -->
+  <div class="nav-bar"><%= link_to "Cars", cars_url %></div>
+  <div class="nav-bar"><%= link_to "Car Makes", makes_url %></div>
+  <div class="nav-bar active-page"><%= link_to "Car Parts", parts_url %></div>
+
+  <div class="page-content">
+    <h1>Car Parts</h1>
+
+    <!--Search function -->
+    <%= form_tag(search_parts_url, method: "get") do %>
+      <%= label_tag(:query, "Search for car parts:") %>
+      <%= text_field_tag(:query) %>
+      <%= submit_tag("Search") %>
     <% end %>
-  </tbody>
-</table>
 
-<br>
+    <table>
+      <thead>
+        <tr>
+          <th>Name</th>
+          <th colspan="2"></th>
+        </tr>
+      </thead>
+
+      <tbody>
+        <% @parts.each do |part| %>
+          <tr>
+            <td><%= part.name %></td>
+            <td class="links"><%= link_to 'Show', part %></td>
+            <td class="links"><%= link_to 'Edit', edit_part_path(part) %></td>
+            <td class="links"><%= link_to 'Destroy', part, method: :delete, data: { confirm: 'Are you sure?' } %></td>
+          </tr>
+        <% end %>
+      </tbody>
+    </table>
+
+    <br>
 
-<%= link_to 'New Part', new_part_path %>
+    <div class="links"><%= link_to 'New Part', new_part_path %></div>
+  </div>
+</div>
\ No newline at end of file
diff --git a/app/views/parts/new.html.erb b/app/views/parts/new.html.erb
index 0db5be7..e8b0dcd 100644
--- a/app/views/parts/new.html.erb
+++ b/app/views/parts/new.html.erb
@@ -1,5 +1,17 @@
-<h1>New Part</h1>
+<div class="body-content">
+    <div class="log-out"><%= link_to 'Log out', destroy_user_session_path, method: :delete %></div>
+    <br>
 
-<%= render 'form', part: @part %>
+    <!--Navigation bar -->
+    <div class="nav-bar"><%= link_to "Cars", cars_url %></div>
+    <div class="nav-bar"><%= link_to "Car Makes", makes_url %></div>
+    <div class="nav-bar active-page"><%= link_to "Car Parts", parts_url %></div>
 
-<%= link_to 'Back', parts_path %>
+    <div class="page-content">
+    <h1>New Car Part</h1>
+
+    <%= render 'form', part: @part %>
+
+    <div class="links"><%= link_to 'Back', parts_path %></div>
+  </div>
+</div>
diff --git a/app/views/parts/show.html.erb b/app/views/parts/show.html.erb
index d58da0d..d672aa7 100644
--- a/app/views/parts/show.html.erb
+++ b/app/views/parts/show.html.erb
@@ -1,9 +1,22 @@
 <p id="notice"><%= notice %></p>
 
-<p>
-  <strong>Name:</strong>
-  <%= @part.name %>
-</p>
+<div class="body-content">
+  <div class="log-out"><%= link_to 'Log out', destroy_user_session_path, method: :delete %></div>
+  <br>
 
-<%= link_to 'Edit', edit_part_path(@part) %> |
-<%= link_to 'Back', parts_path %>
+  <!--Navigation bar -->
+  <div class="nav-bar"><%= link_to "Cars", cars_url %></div>
+  <div class="nav-bar"><%= link_to "Car Makes", makes_url %></div>
+  <div class="nav-bar active-page"><%= link_to "Car Parts", parts_url %></div>
+
+  <div class="page-content">
+    <h1>Car Part Details</h1>
+    <p>
+      <strong>Name:</strong>
+      <%= @part.name %>
+    </p>
+
+    <div class="links"><%= link_to 'Edit', edit_part_path(@part) %></div>
+    <div class="links"><%= link_to 'Back', parts_path %></div>
+  </div>
+</div>
diff --git a/config/environments/test.rb b/config/environments/test.rb
index 0a38fd3..e244594 100644
--- a/config/environments/test.rb
+++ b/config/environments/test.rb
@@ -43,4 +43,5 @@ Rails.application.configure do
 
   # Raises error for missing translations
   # config.action_view.raise_on_missing_translations = true
+
 end
diff --git a/config/routes.rb b/config/routes.rb
index c797554..59769de 100644
--- a/config/routes.rb
+++ b/config/routes.rb
@@ -1,6 +1,22 @@
 Rails.application.routes.draw do
-  resources :cars
-  resources :makes
-  resources :parts
+  devise_for :users
+  resources :cars do
+    collection do
+      get 'search'
+    end
+  end
+  # search_cars GET /cars/search(.:format) cars#search
+  resources :makes do
+    collection do
+      get 'search'
+    end
+  end
+  resources :parts do
+    collection do
+      get 'search'
+    end
+  end
   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
+
+  root to: "cars#index"
 end
diff --git a/db/schema.rb b/db/schema.rb
index 6aea050..e65b76b 100644
--- a/db/schema.rb
+++ b/db/schema.rb
@@ -10,7 +10,7 @@
 #
 # It's strongly recommended that you check this file into your version control system.
 
-ActiveRecord::Schema.define(version: 2019_09_23_023015) do
+ActiveRecord::Schema.define(version: 2019_10_29_171014) do
 
   create_table "cars", force: :cascade do |t|
     t.string "model"
@@ -43,4 +43,16 @@ ActiveRecord::Schema.define(version: 2019_09_23_023015) do
     t.datetime "updated_at", null: false
   end
 
+  create_table "users", force: :cascade do |t|
+    t.string "email", default: "", null: false
+    t.string "encrypted_password", default: "", null: false
+    t.string "reset_password_token"
+    t.datetime "reset_password_sent_at"
+    t.datetime "remember_created_at"
+    t.datetime "created_at", null: false
+    t.datetime "updated_at", null: false
+    t.index ["email"], name: "index_users_on_email", unique: true
+    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
+  end
+
 end