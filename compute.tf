resource "oci_core_instance" "ubuntu_instance2" {
    # Required
    count               = var.num_instances
    availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
    compartment_id = "ocid1.tenancy.oc1..aaaaaaaasxfdij6tkfpjsplqvb4ry7suyrwbrmktmo5eahtwbli5esjkqaka"
    shape = "VM.Standard.E2.1"
    source_details {
        source_id = "ocid1.image.oc1.sa-saopaulo-1.aaaaaaaaiynwgphestsjwamncjgxxqikxd6zjroz4m7wfttyuukqpoaj2eja"
        source_type = "image"
        boot_volume_size_in_gbs = "80"
    }

    # Optional
    display_name = "lab-medeiros"
    create_vnic_details {
        assign_public_ip = true
        subnet_id = "ocid1.subnet.oc1.sa-saopaulo-1.aaaaaaaae75lti7g4oojzfaxtb6shstu5223irob6q65rtwxjuezrbmeoyhq"
    }
    metadata = {
        ssh_authorized_keys = file("/home/medeiros/.ssh/id_rsa.pub")
    }

}
