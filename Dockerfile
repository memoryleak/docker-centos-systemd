FROM centos:7
LABEL maintainer="Haydar Ciftci"
ENV container docker
MAINTAINER 
RUN yum -y install systemd; yum clean all
RUN rm -rf 	/lib/systemd/system/sysinit.target.wants/cryptsetup.target \ 
			/lib/systemd/system/sysinit.target.wants/dev-hugepages.mount \ 
			/lib/systemd/system/sysinit.target.wants/dev-mqueue.mount \ 
			/lib/systemd/system/sysinit.target.wants/kmod-static-nodes.service \ 
			/lib/systemd/system/sysinit.target.wants/plymouth-read-write.service \ 
			/lib/systemd/system/sysinit.target.wants/plymouth-start.service \ 
			/lib/systemd/system/sysinit.target.wants/proc-sys-fs-binfmt_misc.automount \ 
			/lib/systemd/system/sysinit.target.wants/sys-fs-fuse-connections.mount \ 
			/lib/systemd/system/sysinit.target.wants/sys-kernel-config.mount \ 
			/lib/systemd/system/sysinit.target.wants/sys-kernel-debug.mount \ 
			/lib/systemd/system/sysinit.target.wants/systemd-ask-password-console.path \ 
			/lib/systemd/system/sysinit.target.wants/systemd-binfmt.service \ 
			/lib/systemd/system/sysinit.target.wants/systemd-firstboot.service \ 
			/lib/systemd/system/sysinit.target.wants/systemd-hwdb-update.service \ 
			/lib/systemd/system/sysinit.target.wants/systemd-journal-catalog-update.service \ 
			/lib/systemd/system/sysinit.target.wants/systemd-journald.service \ 
			/lib/systemd/system/sysinit.target.wants/systemd-journal-flush.service \ 
			/lib/systemd/system/sysinit.target.wants/systemd-machine-id-commit.service \ 
			/lib/systemd/system/sysinit.target.wants/systemd-modules-load.service \ 
			/lib/systemd/system/sysinit.target.wants/systemd-random-seed.service \ 
			/lib/systemd/system/sysinit.target.wants/systemd-sysctl.service \ 
			/lib/systemd/system/sysinit.target.wants/systemd-tmpfiles-setup-dev.service \ 
			/lib/systemd/system/sysinit.target.wants/systemd-udevd.service \ 
			/lib/systemd/system/sysinit.target.wants/systemd-udev-trigger.service \ 
			/lib/systemd/system/sysinit.target.wants/systemd-update-done.service \ 
			/lib/systemd/system/sysinit.target.wants/systemd-update-utmp.service \ 
			/lib/systemd/system/sysinit.target.wants/systemd-vconsole-setup.service \ 
			/lib/systemd/system/multi-user.target.wants/brandbot.path \ 
			/lib/systemd/system/multi-user.target.wants/dbus.service \ 
			/lib/systemd/system/multi-user.target.wants/getty.target \ 
			/lib/systemd/system/multi-user.target.wants/plymouth-quit.service \ 
			/lib/systemd/system/multi-user.target.wants/plymouth-quit-wait.service \ 
			/lib/systemd/system/multi-user.target.wants/systemd-ask-password-wall.path \ 
			/lib/systemd/system/multi-user.target.wants/systemd-logind.service \ 
			/lib/systemd/system/multi-user.target.wants/systemd-update-utmp-runlevel.service \ 
			/lib/systemd/system/multi-user.target.wants/systemd-user-sessions.service \ 
			/etc/systemd/system/default.target.wants/systemd-readahead-collect.service \ 
			/etc/systemd/system/default.target.wants/systemd-readahead-replay.service \ 
			/etc/systemd/system/getty.target.wants/getty@tty1.service \ 
			/etc/systemd/system/multi-user.target.wants/auditd.service \ 
			/etc/systemd/system/multi-user.target.wants/chronyd.service \ 
			/etc/systemd/system/multi-user.target.wants/crond.service \ 
			/etc/systemd/system/multi-user.target.wants/docker.service \ 
			/etc/systemd/system/multi-user.target.wants/irqbalance.service \ 
			/etc/systemd/system/multi-user.target.wants/kdump.service \ 
			/etc/systemd/system/multi-user.target.wants/NetworkManager.service \ 
			/etc/systemd/system/multi-user.target.wants/nfs-client.target \ 
			/etc/systemd/system/multi-user.target.wants/postfix.service \ 
			/etc/systemd/system/multi-user.target.wants/remote-fs.target \ 
			/etc/systemd/system/multi-user.target.wants/rhsmcertd.service \ 
			/etc/systemd/system/multi-user.target.wants/rsyslog.service \ 
			/etc/systemd/system/multi-user.target.wants/sshd.service \ 
			/etc/systemd/system/multi-user.target.wants/tuned.service \ 
			/etc/systemd/system/remote-fs.target.wants/nfs-client.target \ 
			/etc/systemd/system/sockets.target.wants/dm-event.socket \ 
			/etc/systemd/system/sockets.target.wants/rpcbind.socket \ 
			/etc/systemd/system/sysinit.target.wants/lvm2-lvmetad.socket \ 
			/etc/systemd/system/sysinit.target.wants/lvm2-lvmpolld.socket \ 
			/etc/systemd/system/sysinit.target.wants/lvm2-monitor.service \ 
			/etc/systemd/system/system-update.target.wants/systemd-readahead-drop.service \ 
			/systemd/system/local-fs.target.wants/rhel-import-state.service \ 
			/systemd/system/local-fs.target.wants/rhel-readonly.service \ 
			/systemd/system/local-fs.target.wants/systemd-remount-fs.service \ 
			/systemd/system/sockets.target.wants/systemd-udevd-control.socket \ 
			/systemd/system/sockets.target.wants/systemd-udevd-kernel.socket \ 
			/systemd/system/sockets.target.wants/systemd-initctl.socket \ 
			/systemd/system/basic.target.wants/rhel-autorelabel-mark.service \ 
			/systemd/system/basic.target.wants/rhel-autorelabel.service \ 
			/systemd/system/basic.target.wants/rhel-configure.service \ 
			/systemd/system/basic.target.wants/rhel-dmesg.service \ 
			/systemd/system/basic.target.wants/rhel-loadmodules.service \ 
			/systemd/system/basic.target.wants/selinux-policy-migrate-local-changes@targeted.service

VOLUME [ "/sys/fs/cgroup" ]
CMD ["/usr/sbin/init"]
