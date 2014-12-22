---
layout: 				post
title:  				"Stop Your Server: (3/3)"
date:   				2014-12-17
categories: 			development
published: 				true
permalink: 				/setup-workspace-part-3

---
<h3>Let's stop your server</h3>
<p>If you haven't built your workspace already, start with <a href="{{ "/setup-workspace-part-1" | prepend: site.baseurl }}">Build Your Workspace: (1/3)</a></p>
<p>If you haven't learned to start your server, go to <a href="{{ "/start-server-part-2" | prepend: site.baseurl }}">Start Your Server: (2/3)</a></p>
<ol>
	<li><code>/Users/leong_e/Software/apache-tomcat-7.0.55/bin/./catalina.sh stop</code> <span class="cheat">Use shortcut "control + r" + type stop</span></li>
	<li>Check to see if your server is stopped <code>ps ux | grep 'tomcat'</code>. 
		<p>You should only see one line of code on top of the command.</p>
	<img src="{{ "/images/deployment-stop-successful.png" | prepend: site.baseurl }}" alt="stop server successful">
	</li>
	<li>If the server has more than 1 line, it's still running, you must kill ^_^</li>
	<li>Get your process ID
	<img src="{{ "/images/deployment-stop-not-successful.png" | prepend: site.baseurl }}" alt="stop server process ID">
	</li>
	<li> <code>kill -9 28643</code> </li>
	<li>code>ps ux | grep 'tomcat'</code></li>
	<li>boom. success.</li>
</ol>


