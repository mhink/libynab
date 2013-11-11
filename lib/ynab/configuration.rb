require 'ynab'
require 'fileutils'
require 'activesupport/core_ext/module/attribute_accessors'

module YNAB::Configuration
  mattr_writer :use_cloud_sync
  mattr_writer :ynab_home
  mattr_writer :detect_file_changes

  def budget_ext
    ".ynab4"
  end

  def budget_metadata_ext
    ".ymeta"
  end

  def budget_backup_ext
    ".y4backup"
  end

  def device_ext
    ".ydevice"
  end

  def detect_file_changes
    @detect_file_changes ||= false
  end

  def use_cloud_sync
    @use_cloud_sync ||= false
  end

  def ynab_home
    @ynab_home ||= File.join(Dir.home, "Dropbox", "YNAB")
  end
end
