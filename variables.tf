variable "ces_tools" {
  description = <<EOT
Map of ces_tools, attributes below
Required:
    - app
    - location
    - tool_id
Optional:
    - deletion_policy
    - execution_type
    - project
    - timeout
    - agent_tool (block):
        - agent (optional)
        - description (optional)
        - name (required)
    - client_function (block):
        - description (optional)
        - name (required)
        - parameters (optional, block):
            - additional_properties (optional)
            - any_of (optional)
            - default (optional)
            - defs (optional)
            - description (optional)
            - enum (optional)
            - items (optional)
            - max_items (optional)
            - maximum (optional)
            - min_items (optional)
            - minimum (optional)
            - nullable (optional)
            - prefix_items (optional)
            - properties (optional)
            - ref (optional)
            - required (optional)
            - title (optional)
            - type (required)
            - unique_items (optional)
        - response (optional, block):
            - additional_properties (optional)
            - any_of (optional)
            - default (optional)
            - defs (optional)
            - description (optional)
            - enum (optional)
            - items (optional)
            - max_items (optional)
            - maximum (optional)
            - min_items (optional)
            - minimum (optional)
            - nullable (optional)
            - prefix_items (optional)
            - properties (optional)
            - ref (optional)
            - required (optional)
            - title (optional)
            - type (required)
            - unique_items (optional)
    - data_store_tool (block):
        - boost_specs (optional, block):
            - data_stores (required)
            - spec (required, block):
                - condition_boost_specs (required, block):
                    - boost (optional)
                    - boost_control_spec (optional, block):
                        - attribute_type (optional)
                        - control_points (optional, block):
                            - attribute_value (optional)
                            - boost_amount (optional)
                        - field_name (optional)
                        - interpolation_type (optional)
                    - condition (required)
        - data_store_source (optional, block):
            - data_store (optional, block):
                - name (required)
            - filter (optional)
        - description (optional)
        - engine_source (optional, block):
            - data_store_sources (optional, block):
                - data_store (optional, block):
                    - name (required)
                - filter (optional)
            - engine (required)
            - filter (optional)
        - filter_parameter_behavior (optional)
        - max_results (optional)
        - modality_configs (optional, block):
            - grounding_config (optional, block):
                - disabled (optional)
                - grounding_level (optional)
            - modality_type (required)
            - rewriter_config (optional, block):
                - disabled (optional)
                - model_settings (required, block):
                    - model (optional)
                    - temperature (optional)
                - prompt (optional)
            - snippets_config (optional, block):
                - enable_snippets (optional)
            - summarization_config (optional, block):
                - disabled (optional)
                - model_settings (optional, block):
                    - model (optional)
                    - temperature (optional)
                - prompt (optional)
        - name (required)
    - file_search_tool (block):
        - corpus_type (optional)
        - description (optional)
        - file_corpus (optional)
        - name (required)
    - google_search_tool (block):
        - context_urls (optional)
        - description (optional)
        - exclude_domains (optional)
        - name (required)
        - preferred_domains (optional)
        - prompt_config (optional, block):
            - text_prompt (optional)
            - voice_prompt (optional)
    - python_function (block):
        - name (optional)
        - python_code (optional)
        - service_directory_config (optional, block):
            - service (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - tool_fake_config (block):
        - code_block (optional, block):
            - python_code (required)
        - enable_fake_mode (optional)
    - widget_tool (block):
        - data_mapping (optional, block):
            - field_mappings (optional)
            - mode (optional)
            - python_function (optional, block):
                - name (optional)
                - python_code (optional)
            - source_tool_name (optional)
        - description (optional)
        - name (required)
        - parameters (optional, block):
            - additional_properties (optional)
            - any_of (optional)
            - default (optional)
            - defs (optional)
            - description (optional)
            - enum (optional)
            - items (optional)
            - max_items (optional)
            - maximum (optional)
            - min_items (optional)
            - minimum (optional)
            - nullable (optional)
            - prefix_items (optional)
            - properties (optional)
            - ref (optional)
            - required (optional)
            - title (optional)
            - type (required)
            - unique_items (optional)
        - text_response_config (optional, block):
            - static_text (optional)
            - text_response_instruction (optional)
            - type (optional)
        - ui_config (optional)
        - widget_type (optional)
EOT

  type = map(object({
    app             = string
    location        = string
    tool_id         = string
    deletion_policy = optional(string)
    execution_type  = optional(string)
    project         = optional(string)
    timeout         = optional(string)
    agent_tool = optional(object({
      agent       = optional(string)
      description = optional(string)
      name        = string
    }))
    client_function = optional(object({
      description = optional(string)
      name        = string
      parameters = optional(object({
        additional_properties = optional(string)
        any_of                = optional(string)
        default               = optional(string)
        defs                  = optional(string)
        description           = optional(string)
        enum                  = optional(list(string))
        items                 = optional(string)
        max_items             = optional(number)
        maximum               = optional(number)
        min_items             = optional(number)
        minimum               = optional(number)
        nullable              = optional(bool)
        prefix_items          = optional(string)
        properties            = optional(string)
        ref                   = optional(string)
        required              = optional(list(string))
        title                 = optional(string)
        type                  = string
        unique_items          = optional(bool)
      }))
      response = optional(object({
        additional_properties = optional(string)
        any_of                = optional(string)
        default               = optional(string)
        defs                  = optional(string)
        description           = optional(string)
        enum                  = optional(list(string))
        items                 = optional(string)
        max_items             = optional(number)
        maximum               = optional(number)
        min_items             = optional(number)
        minimum               = optional(number)
        nullable              = optional(bool)
        prefix_items          = optional(string)
        properties            = optional(string)
        ref                   = optional(string)
        required              = optional(list(string))
        title                 = optional(string)
        type                  = string
        unique_items          = optional(bool)
      }))
    }))
    data_store_tool = optional(object({
      boost_specs = optional(list(object({
        data_stores = list(string)
        spec = list(object({
          condition_boost_specs = list(object({
            boost = optional(number)
            boost_control_spec = optional(object({
              attribute_type = optional(string)
              control_points = optional(list(object({
                attribute_value = optional(string)
                boost_amount    = optional(number)
              })))
              field_name         = optional(string)
              interpolation_type = optional(string)
            }))
            condition = string
          }))
        }))
      })))
      data_store_source = optional(object({
        data_store = optional(object({
          name = string
        }))
        filter = optional(string)
      }))
      description = optional(string)
      engine_source = optional(object({
        data_store_sources = optional(list(object({
          data_store = optional(object({
            name = string
          }))
          filter = optional(string)
        })))
        engine = string
        filter = optional(string)
      }))
      filter_parameter_behavior = optional(string)
      max_results               = optional(number)
      modality_configs = optional(list(object({
        grounding_config = optional(object({
          disabled        = optional(bool)
          grounding_level = optional(number)
        }))
        modality_type = string
        rewriter_config = optional(object({
          disabled = optional(bool)
          model_settings = object({
            model       = optional(string)
            temperature = optional(number)
          })
          prompt = optional(string)
        }))
        snippets_config = optional(object({
          enable_snippets = optional(bool)
        }))
        summarization_config = optional(object({
          disabled = optional(bool)
          model_settings = optional(object({
            model       = optional(string)
            temperature = optional(number)
          }))
          prompt = optional(string)
        }))
      })))
      name = string
    }))
    file_search_tool = optional(object({
      corpus_type = optional(string)
      description = optional(string)
      file_corpus = optional(string)
      name        = string
    }))
    google_search_tool = optional(object({
      context_urls      = optional(list(string))
      description       = optional(string)
      exclude_domains   = optional(list(string))
      name              = string
      preferred_domains = optional(list(string))
      prompt_config = optional(object({
        text_prompt  = optional(string)
        voice_prompt = optional(string)
      }))
    }))
    python_function = optional(object({
      name        = optional(string)
      python_code = optional(string)
      service_directory_config = optional(object({
        service = string
      }))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    tool_fake_config = optional(object({
      code_block = optional(object({
        python_code = string
      }))
      enable_fake_mode = optional(bool)
    }))
    widget_tool = optional(object({
      data_mapping = optional(object({
        field_mappings = optional(map(string))
        mode           = optional(string)
        python_function = optional(object({
          name        = optional(string)
          python_code = optional(string)
        }))
        source_tool_name = optional(string)
      }))
      description = optional(string)
      name        = string
      parameters = optional(object({
        additional_properties = optional(string)
        any_of                = optional(string)
        default               = optional(string)
        defs                  = optional(string)
        description           = optional(string)
        enum                  = optional(list(string))
        items                 = optional(string)
        max_items             = optional(number)
        maximum               = optional(number)
        min_items             = optional(number)
        minimum               = optional(number)
        nullable              = optional(bool)
        prefix_items          = optional(string)
        properties            = optional(string)
        ref                   = optional(string)
        required              = optional(list(string))
        title                 = optional(string)
        type                  = string
        unique_items          = optional(bool)
      }))
      text_response_config = optional(object({
        static_text               = optional(string)
        text_response_instruction = optional(string)
        type                      = optional(string)
      }))
      ui_config   = optional(string)
      widget_type = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.ces_tools : (
        v.data_store_tool == null || (v.data_store_tool.boost_specs == null || alltrue([for item in v.data_store_tool.boost_specs : (length(item.spec) >= 1)]))
      )
    ])
    error_message = "Each spec list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.ces_tools : (
        v.data_store_tool == null || (v.data_store_tool.boost_specs == null || alltrue([for item in v.data_store_tool.boost_specs : (alltrue([for item in item.spec : (length(item.condition_boost_specs) >= 1)]))]))
      )
    ])
    error_message = "Each condition_boost_specs list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.ces_tools : (
        v.client_function == null || (v.client_function.parameters == null || (v.client_function.parameters.additional_properties == null || (can(jsondecode(v.client_function.parameters.additional_properties)))))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.ces_tools : (
        v.client_function == null || (v.client_function.parameters == null || (v.client_function.parameters.any_of == null || (can(jsondecode(v.client_function.parameters.any_of)))))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.ces_tools : (
        v.client_function == null || (v.client_function.parameters == null || (v.client_function.parameters.defs == null || (can(jsondecode(v.client_function.parameters.defs)))))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.ces_tools : (
        v.client_function == null || (v.client_function.parameters == null || (v.client_function.parameters.items == null || (can(jsondecode(v.client_function.parameters.items)))))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.ces_tools : (
        v.client_function == null || (v.client_function.parameters == null || (v.client_function.parameters.prefix_items == null || (can(jsondecode(v.client_function.parameters.prefix_items)))))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.ces_tools : (
        v.client_function == null || (v.client_function.parameters == null || (v.client_function.parameters.properties == null || (can(jsondecode(v.client_function.parameters.properties)))))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.ces_tools : (
        v.client_function == null || (v.client_function.response == null || (v.client_function.response.additional_properties == null || (can(jsondecode(v.client_function.response.additional_properties)))))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.ces_tools : (
        v.client_function == null || (v.client_function.response == null || (v.client_function.response.any_of == null || (can(jsondecode(v.client_function.response.any_of)))))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.ces_tools : (
        v.client_function == null || (v.client_function.response == null || (v.client_function.response.defs == null || (can(jsondecode(v.client_function.response.defs)))))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.ces_tools : (
        v.client_function == null || (v.client_function.response == null || (v.client_function.response.items == null || (can(jsondecode(v.client_function.response.items)))))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.ces_tools : (
        v.client_function == null || (v.client_function.response == null || (v.client_function.response.prefix_items == null || (can(jsondecode(v.client_function.response.prefix_items)))))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.ces_tools : (
        v.client_function == null || (v.client_function.response == null || (v.client_function.response.properties == null || (can(jsondecode(v.client_function.response.properties)))))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.ces_tools : (
        v.widget_tool == null || (v.widget_tool.parameters == null || (v.widget_tool.parameters.additional_properties == null || (can(jsondecode(v.widget_tool.parameters.additional_properties)))))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.ces_tools : (
        v.widget_tool == null || (v.widget_tool.parameters == null || (v.widget_tool.parameters.any_of == null || (can(jsondecode(v.widget_tool.parameters.any_of)))))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.ces_tools : (
        v.widget_tool == null || (v.widget_tool.parameters == null || (v.widget_tool.parameters.default == null || (can(jsondecode(v.widget_tool.parameters.default)))))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.ces_tools : (
        v.widget_tool == null || (v.widget_tool.parameters == null || (v.widget_tool.parameters.defs == null || (can(jsondecode(v.widget_tool.parameters.defs)))))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.ces_tools : (
        v.widget_tool == null || (v.widget_tool.parameters == null || (v.widget_tool.parameters.items == null || (can(jsondecode(v.widget_tool.parameters.items)))))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.ces_tools : (
        v.widget_tool == null || (v.widget_tool.parameters == null || (v.widget_tool.parameters.prefix_items == null || (can(jsondecode(v.widget_tool.parameters.prefix_items)))))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.ces_tools : (
        v.widget_tool == null || (v.widget_tool.parameters == null || (v.widget_tool.parameters.properties == null || (can(jsondecode(v.widget_tool.parameters.properties)))))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.ces_tools : (
        v.widget_tool == null || (v.widget_tool.ui_config == null || (can(jsondecode(v.widget_tool.ui_config))))
      )
    ])
    error_message = "must be valid JSON"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

