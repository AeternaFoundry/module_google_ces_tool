output "ces_tools_id" {
  description = "Map of id values across all ces_tools, keyed the same as var.ces_tools except keys with no id are omitted"
  value       = { for k, v in google_ces_tool.ces_tools : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ces_tools_agent_tool" {
  description = "Map of agent_tool values across all ces_tools, keyed the same as var.ces_tools except keys with no agent_tool are omitted"
  value       = { for k, v in google_ces_tool.ces_tools : k => one(v.agent_tool) if v.agent_tool != null && length(v.agent_tool) > 0 }
}
output "ces_tools_app" {
  description = "Map of app values across all ces_tools, keyed the same as var.ces_tools except keys with no app are omitted"
  value       = { for k, v in google_ces_tool.ces_tools : k => v.app if v.app != null && length(v.app) > 0 }
}
output "ces_tools_client_function" {
  description = "Map of client_function values across all ces_tools, keyed the same as var.ces_tools except keys with no client_function are omitted"
  value       = { for k, v in google_ces_tool.ces_tools : k => one(v.client_function) if v.client_function != null && length(v.client_function) > 0 }
}
output "ces_tools_connector_tool" {
  description = "Map of connector_tool values across all ces_tools, keyed the same as var.ces_tools except keys with no connector_tool are omitted"
  value       = { for k, v in google_ces_tool.ces_tools : k => v.connector_tool if v.connector_tool != null && length(v.connector_tool) > 0 }
}
output "ces_tools_create_time" {
  description = "Map of create_time values across all ces_tools, keyed the same as var.ces_tools except keys with no create_time are omitted"
  value       = { for k, v in google_ces_tool.ces_tools : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "ces_tools_data_store_tool" {
  description = "Map of data_store_tool values across all ces_tools, keyed the same as var.ces_tools except keys with no data_store_tool are omitted"
  value       = { for k, v in google_ces_tool.ces_tools : k => one(v.data_store_tool) if v.data_store_tool != null && length(v.data_store_tool) > 0 }
}
output "ces_tools_deletion_policy" {
  description = "Map of deletion_policy values across all ces_tools, keyed the same as var.ces_tools except keys with no deletion_policy are omitted"
  value       = { for k, v in google_ces_tool.ces_tools : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "ces_tools_display_name" {
  description = "Map of display_name values across all ces_tools, keyed the same as var.ces_tools except keys with no display_name are omitted"
  value       = { for k, v in google_ces_tool.ces_tools : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "ces_tools_etag" {
  description = "Map of etag values across all ces_tools, keyed the same as var.ces_tools except keys with no etag are omitted"
  value       = { for k, v in google_ces_tool.ces_tools : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "ces_tools_execution_type" {
  description = "Map of execution_type values across all ces_tools, keyed the same as var.ces_tools except keys with no execution_type are omitted"
  value       = { for k, v in google_ces_tool.ces_tools : k => v.execution_type if v.execution_type != null && length(v.execution_type) > 0 }
}
output "ces_tools_file_search_tool" {
  description = "Map of file_search_tool values across all ces_tools, keyed the same as var.ces_tools except keys with no file_search_tool are omitted"
  value       = { for k, v in google_ces_tool.ces_tools : k => one(v.file_search_tool) if v.file_search_tool != null && length(v.file_search_tool) > 0 }
}
output "ces_tools_generated_summary" {
  description = "Map of generated_summary values across all ces_tools, keyed the same as var.ces_tools except keys with no generated_summary are omitted"
  value       = { for k, v in google_ces_tool.ces_tools : k => v.generated_summary if v.generated_summary != null && length(v.generated_summary) > 0 }
}
output "ces_tools_google_search_tool" {
  description = "Map of google_search_tool values across all ces_tools, keyed the same as var.ces_tools except keys with no google_search_tool are omitted"
  value       = { for k, v in google_ces_tool.ces_tools : k => one(v.google_search_tool) if v.google_search_tool != null && length(v.google_search_tool) > 0 }
}
output "ces_tools_location" {
  description = "Map of location values across all ces_tools, keyed the same as var.ces_tools except keys with no location are omitted"
  value       = { for k, v in google_ces_tool.ces_tools : k => v.location if v.location != null && length(v.location) > 0 }
}
output "ces_tools_mcp_tool" {
  description = "Map of mcp_tool values across all ces_tools, keyed the same as var.ces_tools except keys with no mcp_tool are omitted"
  value       = { for k, v in google_ces_tool.ces_tools : k => v.mcp_tool if v.mcp_tool != null && length(v.mcp_tool) > 0 }
}
output "ces_tools_name" {
  description = "Map of name values across all ces_tools, keyed the same as var.ces_tools except keys with no name are omitted"
  value       = { for k, v in google_ces_tool.ces_tools : k => v.name if v.name != null && length(v.name) > 0 }
}
output "ces_tools_open_api_tool" {
  description = "Map of open_api_tool values across all ces_tools, keyed the same as var.ces_tools except keys with no open_api_tool are omitted"
  value       = { for k, v in google_ces_tool.ces_tools : k => v.open_api_tool if v.open_api_tool != null && length(v.open_api_tool) > 0 }
}
output "ces_tools_project" {
  description = "Map of project values across all ces_tools, keyed the same as var.ces_tools except keys with no project are omitted"
  value       = { for k, v in google_ces_tool.ces_tools : k => v.project if v.project != null && length(v.project) > 0 }
}
output "ces_tools_python_function" {
  description = "Map of python_function values across all ces_tools, keyed the same as var.ces_tools except keys with no python_function are omitted"
  value       = { for k, v in google_ces_tool.ces_tools : k => one(v.python_function) if v.python_function != null && length(v.python_function) > 0 }
}
output "ces_tools_remote_agent_tool" {
  description = "Map of remote_agent_tool values across all ces_tools, keyed the same as var.ces_tools except keys with no remote_agent_tool are omitted"
  value       = { for k, v in google_ces_tool.ces_tools : k => v.remote_agent_tool if v.remote_agent_tool != null && length(v.remote_agent_tool) > 0 }
}
output "ces_tools_system_tool" {
  description = "Map of system_tool values across all ces_tools, keyed the same as var.ces_tools except keys with no system_tool are omitted"
  value       = { for k, v in google_ces_tool.ces_tools : k => v.system_tool if v.system_tool != null && length(v.system_tool) > 0 }
}
output "ces_tools_timeout" {
  description = "Map of timeout values across all ces_tools, keyed the same as var.ces_tools except keys with no timeout are omitted"
  value       = { for k, v in google_ces_tool.ces_tools : k => v.timeout if v.timeout != null && length(v.timeout) > 0 }
}
output "ces_tools_tool_fake_config" {
  description = "Map of tool_fake_config values across all ces_tools, keyed the same as var.ces_tools except keys with no tool_fake_config are omitted"
  value       = { for k, v in google_ces_tool.ces_tools : k => one(v.tool_fake_config) if v.tool_fake_config != null && length(v.tool_fake_config) > 0 }
}
output "ces_tools_tool_id" {
  description = "Map of tool_id values across all ces_tools, keyed the same as var.ces_tools except keys with no tool_id are omitted"
  value       = { for k, v in google_ces_tool.ces_tools : k => v.tool_id if v.tool_id != null && length(v.tool_id) > 0 }
}
output "ces_tools_update_time" {
  description = "Map of update_time values across all ces_tools, keyed the same as var.ces_tools except keys with no update_time are omitted"
  value       = { for k, v in google_ces_tool.ces_tools : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}
output "ces_tools_widget_tool" {
  description = "Map of widget_tool values across all ces_tools, keyed the same as var.ces_tools except keys with no widget_tool are omitted"
  value       = { for k, v in google_ces_tool.ces_tools : k => one(v.widget_tool) if v.widget_tool != null && length(v.widget_tool) > 0 }
}

