terraform {
  required_providers {
    proxmox = {
      source = "Telmate/proxmox"
      version = "2.9.11"
    }
  }
}

provider "proxmox" {
  pm_api_url    = "https://10.20.30.41:8006/api2/json"
  pm_debug      = true
}

resource "proxmox_vm_qemu" "vm03-tf" {
    count       = 1
    name        = "vm03-tf"
    target_node = "srv01"
    clone       = "template-ALMA-9.0"
    full_clone  = true
    os_type     = "cloud_init"
    cores       = 1
    sockets     = 1
    cpu         = "host"
    memory      = 1024
    scsihw            = "virtio-scsi-pci"
    bootdisk          = "scsi0"
    disk {
        size            = "20G"
        type            = "scsi"
        storage         = "local-lvm"
    }
    network {
        model           = "virtio"
        bridge          = "vmbr0"
    }
}

resource "proxmox_vm_qemu" "vm04-tf" {
    count       = 1
    name        = "vm04-tf"
    target_node = "srv01"
    clone       = "template-ALMA-9.0"
    full_clone  = true
    os_type     = "cloud_init"
    cores       = 1
    sockets     = 1
    cpu         = "host"
    memory      = 1024
    scsihw            = "virtio-scsi-pci"
    bootdisk          = "scsi0"
    disk {
        size            = "20G"
        type            = "scsi"
        storage         = "local-lvm"
    }
    network {
        model           = "virtio"
        bridge          = "vmbr0"
    }
}

resource "proxmox_vm_qemu" "vm05-tf" {
    count       = 1
    name        = "vm05-tf"
    target_node = "srv01"
    clone       = "template-ALMA-9.0"
    full_clone  = true
    os_type     = "cloud_init"
    cores       = 1
    sockets     = 1
    cpu         = "host"
    memory      = 1024
    scsihw            = "virtio-scsi-pci"
    bootdisk          = "scsi0"
    disk {
        size            = "20G"
        type            = "scsi"
        storage         = "local-lvm"
    }
    network {
        model           = "virtio"
        bridge          = "vmbr0"
    }
}

resource "proxmox_vm_qemu" "vm06-tf" {
    count       = 1
    name        = "vm06-tf"
    target_node = "srv01"
    clone       = "template-ALMA-9.0"
    full_clone  = true
    os_type     = "cloud_init"
    cores       = 1
    sockets     = 1
    cpu         = "host"
    memory      = 1024
    scsihw            = "virtio-scsi-pci"
    bootdisk          = "scsi0"
    disk {
        size            = "20G"
        type            = "scsi"
        storage         = "local-lvm"
    }
    network {
        model           = "virtio"
        bridge          = "vmbr0"
    }
}