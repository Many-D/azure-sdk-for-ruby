# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 2.2.27.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '2016-06-01/generated/azure_mgmt_recovery_services_backup/module_definition'
require 'ms_rest_azure'

module Azure::ARM::RecoveryServicesBackup::Api_2016_06_01
  autoload :ItemLevelRecoveryConnections,                       '2016-06-01/generated/azure_mgmt_recovery_services_backup/item_level_recovery_connections.rb'
  autoload :Restores,                                           '2016-06-01/generated/azure_mgmt_recovery_services_backup/restores.rb'
  autoload :ProtectionPolicyOperationStatuses,                  '2016-06-01/generated/azure_mgmt_recovery_services_backup/protection_policy_operation_statuses.rb'
  autoload :ProtectionPolicyOperationResults,                   '2016-06-01/generated/azure_mgmt_recovery_services_backup/protection_policy_operation_results.rb'
  autoload :ProtectionPolicies,                                 '2016-06-01/generated/azure_mgmt_recovery_services_backup/protection_policies.rb'
  autoload :ProtectionContainerOperationResults,                '2016-06-01/generated/azure_mgmt_recovery_services_backup/protection_container_operation_results.rb'
  autoload :ProtectionContainerRefreshOperationResults,         '2016-06-01/generated/azure_mgmt_recovery_services_backup/protection_container_refresh_operation_results.rb'
  autoload :ProtectionContainers,                               '2016-06-01/generated/azure_mgmt_recovery_services_backup/protection_containers.rb'
  autoload :RecoveryPoints,                                     '2016-06-01/generated/azure_mgmt_recovery_services_backup/recovery_points.rb'
  autoload :Backups,                                            '2016-06-01/generated/azure_mgmt_recovery_services_backup/backups.rb'
  autoload :ProtectedItemOperationStatuses,                     '2016-06-01/generated/azure_mgmt_recovery_services_backup/protected_item_operation_statuses.rb'
  autoload :ProtectedItemOperationResults,                      '2016-06-01/generated/azure_mgmt_recovery_services_backup/protected_item_operation_results.rb'
  autoload :ProtectedItems,                                     '2016-06-01/generated/azure_mgmt_recovery_services_backup/protected_items.rb'
  autoload :ProtectableItems,                                   '2016-06-01/generated/azure_mgmt_recovery_services_backup/protectable_items.rb'
  autoload :ExportJobsOperationResults,                         '2016-06-01/generated/azure_mgmt_recovery_services_backup/export_jobs_operation_results.rb'
  autoload :JobOperationResults,                                '2016-06-01/generated/azure_mgmt_recovery_services_backup/job_operation_results.rb'
  autoload :Jobs,                                               '2016-06-01/generated/azure_mgmt_recovery_services_backup/jobs.rb'
  autoload :JobCancellations,                                   '2016-06-01/generated/azure_mgmt_recovery_services_backup/job_cancellations.rb'
  autoload :JobDetails,                                         '2016-06-01/generated/azure_mgmt_recovery_services_backup/job_details.rb'
  autoload :BackupOperationStatuses,                            '2016-06-01/generated/azure_mgmt_recovery_services_backup/backup_operation_statuses.rb'
  autoload :BackupOperationResults,                             '2016-06-01/generated/azure_mgmt_recovery_services_backup/backup_operation_results.rb'
  autoload :BackupEngines,                                      '2016-06-01/generated/azure_mgmt_recovery_services_backup/backup_engines.rb'
  autoload :RecoveryServicesBackupClient,                       '2016-06-01/generated/azure_mgmt_recovery_services_backup/recovery_services_backup_client.rb'

  module Models
    autoload :SchedulePolicy,                                     '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/schedule_policy.rb'
    autoload :RetentionPolicy,                                    '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/retention_policy.rb'
    autoload :Job,                                                '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/job.rb'
    autoload :ILRRequest,                                         '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/ilrrequest.rb'
    autoload :BMSRPQueryObject,                                   '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/bmsrpquery_object.rb'
    autoload :ProtectionPolicy,                                   '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/protection_policy.rb'
    autoload :BMSBackupEngineQueryObject,                         '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/bmsbackup_engine_query_object.rb'
    autoload :WeeklyRetentionFormat,                              '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/weekly_retention_format.rb'
    autoload :OperationStatusExtendedInfo,                        '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/operation_status_extended_info.rb'
    autoload :MonthlyRetentionSchedule,                           '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/monthly_retention_schedule.rb'
    autoload :OperationWorkerResponse,                            '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/operation_worker_response.rb'
    autoload :BMSContainerQueryObject,                            '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/bmscontainer_query_object.rb'
    autoload :WorkloadProtectableItem,                            '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/workload_protectable_item.rb'
    autoload :RestoreRequest,                                     '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/restore_request.rb'
    autoload :DpmErrorInfo,                                       '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/dpm_error_info.rb'
    autoload :KeyAndSecretDetails,                                '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/key_and_secret_details.rb'
    autoload :ProtectedItem,                                      '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/protected_item.rb'
    autoload :ProtectionPolicyQueryObject,                        '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/protection_policy_query_object.rb'
    autoload :BMSPOQueryObject,                                   '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/bmspoquery_object.rb'
    autoload :BEKDetails,                                         '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/bekdetails.rb'
    autoload :GetProtectedItemQueryObject,                        '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/get_protected_item_query_object.rb'
    autoload :KEKDetails,                                         '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/kekdetails.rb'
    autoload :AzureIaaSVMJobTaskDetails,                          '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/azure_iaa_svmjob_task_details.rb'
    autoload :YearlyRetentionSchedule,                            '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/yearly_retention_schedule.rb'
    autoload :RecoveryPoint,                                      '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/recovery_point.rb'
    autoload :ResourceList,                                       '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/resource_list.rb'
    autoload :Day,                                                '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/day.rb'
    autoload :ClientScriptForConnect,                             '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/client_script_for_connect.rb'
    autoload :DailyRetentionFormat,                               '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/daily_retention_format.rb'
    autoload :InstantItemRecoveryTarget,                          '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/instant_item_recovery_target.rb'
    autoload :BackupEngineBase,                                   '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/backup_engine_base.rb'
    autoload :MabContainerExtendedInfo,                           '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/mab_container_extended_info.rb'
    autoload :OperationStatus,                                    '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/operation_status.rb'
    autoload :RetentionDuration,                                  '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/retention_duration.rb'
    autoload :DpmJobTaskDetails,                                  '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/dpm_job_task_details.rb'
    autoload :MabJobExtendedInfo,                                 '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/mab_job_extended_info.rb'
    autoload :WeeklyRetentionSchedule,                            '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/weekly_retention_schedule.rb'
    autoload :AzureIaaSVMProtectedItemExtendedInfo,               '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/azure_iaa_svmprotected_item_extended_info.rb'
    autoload :BackupRequest,                                      '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/backup_request.rb'
    autoload :MabJobTaskDetails,                                  '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/mab_job_task_details.rb'
    autoload :AzureIaaSVMErrorInfo,                               '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/azure_iaa_svmerror_info.rb'
    autoload :MabFileFolderProtectedItemExtendedInfo,             '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/mab_file_folder_protected_item_extended_info.rb'
    autoload :EncryptionDetails,                                  '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/encryption_details.rb'
    autoload :MabErrorInfo,                                       '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/mab_error_info.rb'
    autoload :JobQueryObject,                                     '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/job_query_object.rb'
    autoload :AzureSqlProtectedItemExtendedInfo,                  '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/azure_sql_protected_item_extended_info.rb'
    autoload :AzureIaaSVMJobExtendedInfo,                         '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/azure_iaa_svmjob_extended_info.rb'
    autoload :DailyRetentionSchedule,                             '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/daily_retention_schedule.rb'
    autoload :ProtectionContainer,                                '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/protection_container.rb'
    autoload :DpmJobExtendedInfo,                                 '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/dpm_job_extended_info.rb'
    autoload :OperationResultInfoBase,                            '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/operation_result_info_base.rb'
    autoload :Resource,                                           '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/resource.rb'
    autoload :OperationStatusError,                               '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/operation_status_error.rb'
    autoload :ProtectedItemQueryObject,                           '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/protected_item_query_object.rb'
    autoload :JobResource,                                        '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/job_resource.rb'
    autoload :JobResourceList,                                    '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/job_resource_list.rb'
    autoload :WorkloadProtectableItemResource,                    '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/workload_protectable_item_resource.rb'
    autoload :WorkloadProtectableItemResourceList,                '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/workload_protectable_item_resource_list.rb'
    autoload :ProtectedItemResource,                              '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/protected_item_resource.rb'
    autoload :ProtectedItemResourceList,                          '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/protected_item_resource_list.rb'
    autoload :BackupRequestResource,                              '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/backup_request_resource.rb'
    autoload :RecoveryPointResource,                              '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/recovery_point_resource.rb'
    autoload :RecoveryPointResourceList,                          '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/recovery_point_resource_list.rb'
    autoload :ProtectionContainerResource,                        '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/protection_container_resource.rb'
    autoload :ProtectionContainerResourceList,                    '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/protection_container_resource_list.rb'
    autoload :ProtectionPolicyResource,                           '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/protection_policy_resource.rb'
    autoload :ProtectionPolicyResourceList,                       '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/protection_policy_resource_list.rb'
    autoload :RestoreRequestResource,                             '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/restore_request_resource.rb'
    autoload :ILRRequestResource,                                 '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/ilrrequest_resource.rb'
    autoload :AzureBackupServerEngine,                            '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/azure_backup_server_engine.rb'
    autoload :DpmBackupEngine,                                    '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/dpm_backup_engine.rb'
    autoload :AzureSqlContainer,                                  '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/azure_sql_container.rb'
    autoload :IaaSVMContainer,                                    '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/iaa_svmcontainer.rb'
    autoload :MabContainer,                                       '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/mab_container.rb'
    autoload :IaaSVMProtectableItem,                              '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/iaa_svmprotectable_item.rb'
    autoload :AzureIaaSVMProtectedItem,                           '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/azure_iaa_svmprotected_item.rb'
    autoload :MabFileFolderProtectedItem,                         '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/mab_file_folder_protected_item.rb'
    autoload :AzureSqlProtectedItem,                              '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/azure_sql_protected_item.rb'
    autoload :IaasVMBackupRequest,                                '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/iaas_vmbackup_request.rb'
    autoload :AzureIaaSVMProtectionPolicy,                        '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/azure_iaa_svmprotection_policy.rb'
    autoload :MabProtectionPolicy,                                '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/mab_protection_policy.rb'
    autoload :AzureSqlProtectionPolicy,                           '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/azure_sql_protection_policy.rb'
    autoload :IaasVMRecoveryPoint,                                '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/iaas_vmrecovery_point.rb'
    autoload :GenericRecoveryPoint,                               '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/generic_recovery_point.rb'
    autoload :IaasVMRestoreRequest,                               '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/iaas_vmrestore_request.rb'
    autoload :IaasVMILRRegistrationRequest,                       '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/iaas_vmilrregistration_request.rb'
    autoload :AzureIaaSVMJob,                                     '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/azure_iaa_svmjob.rb'
    autoload :DpmJob,                                             '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/dpm_job.rb'
    autoload :MabJob,                                             '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/mab_job.rb'
    autoload :OperationResultInfo,                                '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/operation_result_info.rb'
    autoload :ExportJobsOperationResultInfo,                      '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/export_jobs_operation_result_info.rb'
    autoload :AzureIaaSComputeVMContainer,                        '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/azure_iaa_scompute_vmcontainer.rb'
    autoload :AzureIaaSClassicComputeVMContainer,                 '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/azure_iaa_sclassic_compute_vmcontainer.rb'
    autoload :AzureIaaSComputeVMProtectableItem,                  '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/azure_iaa_scompute_vmprotectable_item.rb'
    autoload :AzureIaaSClassicComputeVMProtectableItem,           '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/azure_iaa_sclassic_compute_vmprotectable_item.rb'
    autoload :AzureIaaSComputeVMProtectedItem,                    '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/azure_iaa_scompute_vmprotected_item.rb'
    autoload :AzureIaaSClassicComputeVMProtectedItem,             '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/azure_iaa_sclassic_compute_vmprotected_item.rb'
    autoload :OperationStatusJobExtendedInfo,                     '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/operation_status_job_extended_info.rb'
    autoload :OperationStatusProvisionILRExtendedInfo,            '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/operation_status_provision_ilrextended_info.rb'
    autoload :OperationStatusJobsExtendedInfo,                    '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/operation_status_jobs_extended_info.rb'
    autoload :LongTermSchedulePolicy,                             '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/long_term_schedule_policy.rb'
    autoload :SimpleSchedulePolicy,                               '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/simple_schedule_policy.rb'
    autoload :SimpleRetentionPolicy,                              '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/simple_retention_policy.rb'
    autoload :LongTermRetentionPolicy,                            '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/long_term_retention_policy.rb'
    autoload :BackupEngineBaseResource,                           '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/backup_engine_base_resource.rb'
    autoload :BackupEngineBaseResourceList,                       '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/backup_engine_base_resource_list.rb'
    autoload :OperationResultInfoBaseResource,                    '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/operation_result_info_base_resource.rb'
    autoload :BackupManagementType,                               '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/backup_management_type.rb'
    autoload :OperationStatusValues,                              '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/operation_status_values.rb'
    autoload :HttpStatusCode,                                     '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/http_status_code.rb'
    autoload :JobStatus,                                          '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/job_status.rb'
    autoload :JobOperationType,                                   '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/job_operation_type.rb'
    autoload :ProtectionStatus,                                   '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/protection_status.rb'
    autoload :DataSourceType,                                     '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/data_source_type.rb'
    autoload :BackupItemType,                                     '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/backup_item_type.rb'
    autoload :ProtectionState,                                    '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/protection_state.rb'
    autoload :ProtectedItemState,                                 '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/protected_item_state.rb'
    autoload :RecoveryType,                                       '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/recovery_type.rb'
    autoload :JobSupportedAction,                                 '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/job_supported_action.rb'
    autoload :MabServerType,                                      '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/mab_server_type.rb'
    autoload :WorkloadType,                                       '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/workload_type.rb'
    autoload :ScheduleRunType,                                    '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/schedule_run_type.rb'
    autoload :DayOfWeek,                                          '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/day_of_week.rb'
    autoload :RetentionDurationType,                              '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/retention_duration_type.rb'
    autoload :RetentionScheduleFormat,                            '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/retention_schedule_format.rb'
    autoload :WeekOfMonth,                                        '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/week_of_month.rb'
    autoload :MonthOfYear,                                        '2016-06-01/generated/azure_mgmt_recovery_services_backup/models/month_of_year.rb'
  end
end
