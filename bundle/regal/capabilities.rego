package regal.capabilities

import data.regal.config

import future.keywords.if
import future.keywords.in

default provided := {}

# METADATA
# description: |
#   The capabilities object for Regal itself. Use `config.capabilities`
#   to get the capabilities for the target environment (i.e. the policies
#   getting linted).
provided := data.internal.capabilities

has_object_keys if "object.keys" in object.keys(config.capabilities.builtins)

# if if if!
has_if if "if" in config.capabilities.future_keywords

has_if if "rego_v1_import" in config.capabilities.features