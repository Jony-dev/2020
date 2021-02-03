#Add/remove outputs according to infrastructure specified in main (e.g. if a stepfunction is removed, the output for it should also be removed).
output "glue_job" {

    value = module.glue_ingest_default_job
}

output "step_function" {

    value = module.step_1_parallelism
}