var/global/datum/getrev/revdata = new()

/datum/getrev
	var/revision
	var/showinfo

/datum/getrev/New()
	var/datum/tgs_revision_information/revinfo = world.TgsRevision()
	if(revinfo)
		revision = revinfo.commit
	else
		var/list/head_log = file2list(".git/logs/HEAD", "\n")
		for(var/line=head_log.len, line>=1, line--)
			if(head_log[line])
				var/list/last_entry = splittext(head_log[line], " ")
				if(last_entry.len < 2)	continue
				revision = last_entry[2]

	world.log << "Running revision:"
	world.log << revision

/client/verb/showrevinfo()
	set category = "OOC"
	set name = "Show Server Revision"
	set desc = "Check the current server code revision"

	to_chat(src, "<b>Client Version:</b> [byond_version]")
	if(revdata.revision)
		var/server_revision = revdata.revision
		if(config.githuburl)
			server_revision = "<a href='[config.githuburl]/commit/[server_revision]'>[server_revision]</a>"
		to_chat(src, "<b>Server Revision:</b> [server_revision]")
	else
		to_chat(src, "<b>Server Revision:</b> Revision Unknown")
	to_chat(src, "Game ID: <b>[game_id]</b>")
	to_chat(src, "Current map: [GLOB.using_map.full_name]")