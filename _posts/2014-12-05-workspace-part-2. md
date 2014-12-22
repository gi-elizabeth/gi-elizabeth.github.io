---
layout: 				post
title:  				"Start Your Server: (2/3)"
date:   				2014-12-17
categories: 			development
published: 				true
permalink: 				/start-server-part-2

---
<h3>Let's start your server</h3>
<p>If you haven't built your workspace already, start with <a href="{{ "/setup-workspace-part-1" | prepend: site.baseurl }}">Build Your Workspace: (1/3)</a></p>
<ol>
	<li>Set your <code>.profile</code></li>
	<li>git pull</li>
	<li>Build your projects in a specific order
		<ol>
			<li>shared-platform - run for the first time in ghix-platform/setup/dependencies: <code>.install-maven-dep.sh</code>
			</li>
			<li>shared-models</li>
			<li>[your project]</li>
		</ol>
	</li>
	<li><code>mvn clean install -DskipTests</code> <span class="cheat"> "control + r" - start typing and it will finish it for you</span></li>
	<li>Change your <code>configuration.properites</code> to npoint to the correct database. <span class="cheat">Save a local version of a configuration.properties to save time.</span></li>
	<li>Go to where your <code>deploymentScript.sh</code> lives</li>
	<li>Run <code>./deploymentScript.sh</code></li>
	<li>Yippee! Your server has started!</li>
</ol>

<h3>How do you see local changes?</h3>
<ol>
	<li>cd to where your tomcat is
<code>/Users/leong_e/Software/apache-tomcat-7.0.55/webapps</code>
	</li>
	<li>Get the path for your file.</li>
	<li><code>cp &lt;FILEPATH&gt; hix/&lt;FILEPATH&gt;</code></li>
</ol>


<a href="{{ "/setup-workspace-part-3" | prepend: site.baseurl }}">Next - Stop Your Server: (3/3)</a>


