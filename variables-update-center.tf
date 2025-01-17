variable "update_center_enabled" {
  description = "Whether the Update Management Center is enabled."
  type        = bool
  default     = false
}

variable "update_center_maintenance_configurations" {
  description = "Update Management Center maintenance configurations. https://learn.microsoft.com/en-us/azure/virtual-machines/maintenance-configurations."
  type = list(object({
    configuration_name = string
    start_date_time    = string
    duration           = optional(string, "02:00")
    time_zone          = optional(string, "UTC")
    recur_every        = string
    reboot_setting     = optional(string, "IfRequired")
    windows_classifications_to_include = optional(list(string), [
      "Critical",
      "Definition",
      "FeaturePack",
      "Security",
      "ServicePack",
      "Tools",
      "UpdateRollup",
      "Updates",
    ])
    linux_classifications_to_include = optional(list(string), [
      "Critical",
      "Security",
      "Other",
    ])
  }))
  default = []
}

variable "update_center_periodic_assessment_enabled" {
  description = "Enable auto-assessment (every 24 hours) for OS updates on native Azure virtual machines by assigning Azure Policy."
  type        = bool
  default     = true
}

variable "update_center_periodic_assessment_scopes" {
  description = "Scope to assign the Azure Policy for auto-assessment. Can be Management Groups, Subscriptions, Resource Groups or Virtual Machines."
  type        = list(string)
  default     = []
}

variable "update_center_periodic_assessment_exclusions" {
  description = "Exclude some resources from auto-assessment."
  type        = list(string)
  default     = []
}
