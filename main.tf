resource "google_ces_tool" "ces_tools" {
  for_each = var.ces_tools

  app             = each.value.app
  location        = each.value.location
  tool_id         = each.value.tool_id
  deletion_policy = each.value.deletion_policy
  execution_type  = each.value.execution_type
  project         = each.value.project
  timeout         = each.value.timeout

  dynamic "agent_tool" {
    for_each = each.value.agent_tool != null ? [each.value.agent_tool] : []
    content {
      agent       = agent_tool.value.agent
      description = agent_tool.value.description
      name        = agent_tool.value.name
    }
  }

  dynamic "client_function" {
    for_each = each.value.client_function != null ? [each.value.client_function] : []
    content {
      description = client_function.value.description
      name        = client_function.value.name
      dynamic "parameters" {
        for_each = client_function.value.parameters != null ? [client_function.value.parameters] : []
        content {
          additional_properties = parameters.value.additional_properties
          any_of                = parameters.value.any_of
          default               = parameters.value.default
          defs                  = parameters.value.defs
          description           = parameters.value.description
          enum                  = parameters.value.enum
          items                 = parameters.value.items
          max_items             = parameters.value.max_items
          maximum               = parameters.value.maximum
          min_items             = parameters.value.min_items
          minimum               = parameters.value.minimum
          nullable              = parameters.value.nullable
          prefix_items          = parameters.value.prefix_items
          properties            = parameters.value.properties
          ref                   = parameters.value.ref
          required              = parameters.value.required
          title                 = parameters.value.title
          type                  = parameters.value.type
          unique_items          = parameters.value.unique_items
        }
      }
      dynamic "response" {
        for_each = client_function.value.response != null ? [client_function.value.response] : []
        content {
          additional_properties = response.value.additional_properties
          any_of                = response.value.any_of
          default               = response.value.default
          defs                  = response.value.defs
          description           = response.value.description
          enum                  = response.value.enum
          items                 = response.value.items
          max_items             = response.value.max_items
          maximum               = response.value.maximum
          min_items             = response.value.min_items
          minimum               = response.value.minimum
          nullable              = response.value.nullable
          prefix_items          = response.value.prefix_items
          properties            = response.value.properties
          ref                   = response.value.ref
          required              = response.value.required
          title                 = response.value.title
          type                  = response.value.type
          unique_items          = response.value.unique_items
        }
      }
    }
  }

  dynamic "data_store_tool" {
    for_each = each.value.data_store_tool != null ? [each.value.data_store_tool] : []
    content {
      dynamic "boost_specs" {
        for_each = data_store_tool.value.boost_specs != null ? data_store_tool.value.boost_specs : []
        content {
          data_stores = boost_specs.value.data_stores
          dynamic "spec" {
            for_each = boost_specs.value.spec
            content {
              dynamic "condition_boost_specs" {
                for_each = spec.value.condition_boost_specs
                content {
                  boost = condition_boost_specs.value.boost
                  dynamic "boost_control_spec" {
                    for_each = condition_boost_specs.value.boost_control_spec != null ? [condition_boost_specs.value.boost_control_spec] : []
                    content {
                      attribute_type = boost_control_spec.value.attribute_type
                      dynamic "control_points" {
                        for_each = boost_control_spec.value.control_points != null ? boost_control_spec.value.control_points : []
                        content {
                          attribute_value = control_points.value.attribute_value
                          boost_amount    = control_points.value.boost_amount
                        }
                      }
                      field_name         = boost_control_spec.value.field_name
                      interpolation_type = boost_control_spec.value.interpolation_type
                    }
                  }
                  condition = condition_boost_specs.value.condition
                }
              }
            }
          }
        }
      }
      dynamic "data_store_source" {
        for_each = data_store_tool.value.data_store_source != null ? [data_store_tool.value.data_store_source] : []
        content {
          dynamic "data_store" {
            for_each = data_store_source.value.data_store != null ? [data_store_source.value.data_store] : []
            content {
              name = data_store.value.name
            }
          }
          filter = data_store_source.value.filter
        }
      }
      description = data_store_tool.value.description
      dynamic "engine_source" {
        for_each = data_store_tool.value.engine_source != null ? [data_store_tool.value.engine_source] : []
        content {
          dynamic "data_store_sources" {
            for_each = engine_source.value.data_store_sources != null ? engine_source.value.data_store_sources : []
            content {
              dynamic "data_store" {
                for_each = data_store_sources.value.data_store != null ? [data_store_sources.value.data_store] : []
                content {
                  name = data_store.value.name
                }
              }
              filter = data_store_sources.value.filter
            }
          }
          engine = engine_source.value.engine
          filter = engine_source.value.filter
        }
      }
      filter_parameter_behavior = data_store_tool.value.filter_parameter_behavior
      max_results               = data_store_tool.value.max_results
      dynamic "modality_configs" {
        for_each = data_store_tool.value.modality_configs != null ? data_store_tool.value.modality_configs : []
        content {
          dynamic "grounding_config" {
            for_each = modality_configs.value.grounding_config != null ? [modality_configs.value.grounding_config] : []
            content {
              disabled        = grounding_config.value.disabled
              grounding_level = grounding_config.value.grounding_level
            }
          }
          modality_type = modality_configs.value.modality_type
          dynamic "rewriter_config" {
            for_each = modality_configs.value.rewriter_config != null ? [modality_configs.value.rewriter_config] : []
            content {
              disabled = rewriter_config.value.disabled
              model_settings {
                model       = rewriter_config.value.model_settings.model
                temperature = rewriter_config.value.model_settings.temperature
              }
              prompt = rewriter_config.value.prompt
            }
          }
          dynamic "snippets_config" {
            for_each = modality_configs.value.snippets_config != null ? [modality_configs.value.snippets_config] : []
            content {
              enable_snippets = snippets_config.value.enable_snippets
            }
          }
          dynamic "summarization_config" {
            for_each = modality_configs.value.summarization_config != null ? [modality_configs.value.summarization_config] : []
            content {
              disabled = summarization_config.value.disabled
              dynamic "model_settings" {
                for_each = summarization_config.value.model_settings != null ? [summarization_config.value.model_settings] : []
                content {
                  model       = model_settings.value.model
                  temperature = model_settings.value.temperature
                }
              }
              prompt = summarization_config.value.prompt
            }
          }
        }
      }
      name = data_store_tool.value.name
    }
  }

  dynamic "file_search_tool" {
    for_each = each.value.file_search_tool != null ? [each.value.file_search_tool] : []
    content {
      corpus_type = file_search_tool.value.corpus_type
      description = file_search_tool.value.description
      file_corpus = file_search_tool.value.file_corpus
      name        = file_search_tool.value.name
    }
  }

  dynamic "google_search_tool" {
    for_each = each.value.google_search_tool != null ? [each.value.google_search_tool] : []
    content {
      context_urls      = google_search_tool.value.context_urls
      description       = google_search_tool.value.description
      exclude_domains   = google_search_tool.value.exclude_domains
      name              = google_search_tool.value.name
      preferred_domains = google_search_tool.value.preferred_domains
      dynamic "prompt_config" {
        for_each = google_search_tool.value.prompt_config != null ? [google_search_tool.value.prompt_config] : []
        content {
          text_prompt  = prompt_config.value.text_prompt
          voice_prompt = prompt_config.value.voice_prompt
        }
      }
    }
  }

  dynamic "python_function" {
    for_each = each.value.python_function != null ? [each.value.python_function] : []
    content {
      name        = python_function.value.name
      python_code = python_function.value.python_code
      dynamic "service_directory_config" {
        for_each = python_function.value.service_directory_config != null ? [python_function.value.service_directory_config] : []
        content {
          service = service_directory_config.value.service
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "tool_fake_config" {
    for_each = each.value.tool_fake_config != null ? [each.value.tool_fake_config] : []
    content {
      dynamic "code_block" {
        for_each = tool_fake_config.value.code_block != null ? [tool_fake_config.value.code_block] : []
        content {
          python_code = code_block.value.python_code
        }
      }
      enable_fake_mode = tool_fake_config.value.enable_fake_mode
    }
  }

  dynamic "widget_tool" {
    for_each = each.value.widget_tool != null ? [each.value.widget_tool] : []
    content {
      dynamic "data_mapping" {
        for_each = widget_tool.value.data_mapping != null ? [widget_tool.value.data_mapping] : []
        content {
          field_mappings = data_mapping.value.field_mappings
          mode           = data_mapping.value.mode
          dynamic "python_function" {
            for_each = data_mapping.value.python_function != null ? [data_mapping.value.python_function] : []
            content {
              name        = python_function.value.name
              python_code = python_function.value.python_code
            }
          }
          source_tool_name = data_mapping.value.source_tool_name
        }
      }
      description = widget_tool.value.description
      name        = widget_tool.value.name
      dynamic "parameters" {
        for_each = widget_tool.value.parameters != null ? [widget_tool.value.parameters] : []
        content {
          additional_properties = parameters.value.additional_properties
          any_of                = parameters.value.any_of
          default               = parameters.value.default
          defs                  = parameters.value.defs
          description           = parameters.value.description
          enum                  = parameters.value.enum
          items                 = parameters.value.items
          max_items             = parameters.value.max_items
          maximum               = parameters.value.maximum
          min_items             = parameters.value.min_items
          minimum               = parameters.value.minimum
          nullable              = parameters.value.nullable
          prefix_items          = parameters.value.prefix_items
          properties            = parameters.value.properties
          ref                   = parameters.value.ref
          required              = parameters.value.required
          title                 = parameters.value.title
          type                  = parameters.value.type
          unique_items          = parameters.value.unique_items
        }
      }
      dynamic "text_response_config" {
        for_each = widget_tool.value.text_response_config != null ? [widget_tool.value.text_response_config] : []
        content {
          static_text               = text_response_config.value.static_text
          text_response_instruction = text_response_config.value.text_response_instruction
          type                      = text_response_config.value.type
        }
      }
      ui_config   = widget_tool.value.ui_config
      widget_type = widget_tool.value.widget_type
    }
  }
}

