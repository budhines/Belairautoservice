<cfcomponent>
<!---Dynamically calculate the the dir path of this application. Use that path as the Application Scope name.--->
<!--- <cfset AppName = listLast(GetDirectoryFromPath(GetCurrentTemplatePath()),'\')> --->
<cfset this.name="BelairAutoService">
<!---Application Scope is set. Length of Application Scope and Session Scope timeout is set here. --->
<cfset this.sessionmanagement = "True">
<cfset this.applicationTimeout = "#createtimespan(0,1,0,0)#">
<cfset this.sessiontimeout = "#createtimespan(0,0,30,0)#">
<cfset this.currRootDirectory = GetDirectoryFromPath(GetCurrentTemplatePath())>

<cfset this.setClientCookies = "False">
<cffunction name="onApplicationStart">

</cffunction>
<cffunction name="onRequestStart">

</cffunction>
</cfcomponent>
