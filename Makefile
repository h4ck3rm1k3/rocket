export GCCGO=gccgo-5
all :all_pkgs

scan:
	python scan.py

#deps : all
#	pass

# Godeps/_workspace/src/github.com/appc/spec/pkg/tarheader.o:
# 	gccgo -o Godeps/_workspace/src/github.com/appc/spec/pkg/tarheader.o Godeps/_workspace/src/github.com/appc/spec/pkg/tarheader/tarheader.go

# Godeps/_workspace/src/github.com/appc/spec/aci.o : Godeps/_workspace/src/github.com/appc/spec/pkg/tarheader.o
# 	gccgo -I. -L. -g Godeps/_workspace/src/github.com/appc/spec/aci/build.go

# all: Godeps/_workspace/src/github.com/appc/spec/aci.o
# 	gccgo  -I Godeps/_workspace/src -L Godeps/_workspace/src  ./common/common.go

./pkg/aci.o: ./pkg/aci/aci.go ./Godeps/_workspace/src/github.com/appc/spec/aci.o ./Godeps/_workspace/src/golang.org/x/crypto/openpgp.o
	$(GCCGO) -L . -I . -c -g -o $@ $^

#./Godeps/_workspace/src/github.com/camlistore/lock/lock_freebsd.go
#./Godeps/_workspace/src/github.com/camlistore/lock/lock_linux_arm.go
#
./Godeps/_workspace/src/github.com/camlistore/lock.o: ./Godeps/_workspace/src/github.com/camlistore/lock/lock_appengine.go    ./Godeps/_workspace/src/github.com/camlistore/lock/lock.go  ./Godeps/_workspace/src/github.com/camlistore/lock/lock_linux_amd64.go  ./Godeps/_workspace/src/github.com/camlistore/lock/lock_sigzero.go
	$(GCCGO) -L . -I . -c -g -o $@ $^
#./Godeps/_workspace/src/github.com/cznic/mathutil/example4.o: ./Godeps/_workspace/src/github.com/cznic/mathutil/example4/main.go
#	$(GCCGO) -L . -I . -c -g -o $@ $^
./Godeps/_workspace/src/golang.org/x/crypto/openpgp/errors.o: ./Godeps/_workspace/src/golang.org/x/crypto/openpgp/errors/errors.go
	$(GCCGO) -L . -I . -c -g -o $@ $^

#
./Godeps/_workspace/src/github.com/cznic/sortutil.o:  ./Godeps/_workspace/src/github.com/cznic/sortutil/sortutil.go
	$(GCCGO) -L . -I . -c -g -o $@ $^
./Godeps/_workspace/src/github.com/cznic/mathutil/example3.o: ./Godeps/_workspace/src/github.com/cznic/mathutil/example3/example3.go
	$(GCCGO) -L . -I . -c -g -o $@ $^
#
./Godeps/_workspace/src/github.com/cznic/fileutil/hdb.o: ./Godeps/_workspace/src/github.com/cznic/fileutil/hdb/hdb.go  ./Godeps/_workspace/src/github.com/cznic/fileutil/hdb/test_deps.go ./Godeps/_workspace/src/github.com/cznic/fileutil/falloc.o ./Godeps/_workspace/src/github.com/cznic/fileutil.o ./Godeps/_workspace/src/github.com/cznic/fileutil/storage.o
	$(GCCGO) -L . -I . -c -g -o $@ $^
./Godeps/_workspace/src/github.com/appc/docker2aci/lib.o: ./Godeps/_workspace/src/github.com/appc/docker2aci/lib/docker_types.go ./Godeps/_workspace/src/github.com/appc/docker2aci/lib/docker_functions.go ./Godeps/_workspace/src/github.com/appc/docker2aci/lib/types.go ./Godeps/_workspace/src/github.com/appc/docker2aci/lib/docker2aci.go ./Godeps/_workspace/src/github.com/appc/docker2aci/lib/util.go ./Godeps/_workspace/src/github.com/appc/docker2aci/tarball.o
	$(GCCGO) -L . -I . -c -g -o $@ $^
#
./pkg/tar.o:  ./pkg/tar/tar.go
	$(GCCGO) -L . -I . -c -g -o $@ $^
./Godeps/_workspace/src/github.com/peterbourgon/diskv/examples/content-addressable-store.o: ./Godeps/_workspace/src/github.com/peterbourgon/diskv/examples/content-addressable-store/cas.go ./Godeps/_workspace/src/github.com/peterbourgon/diskv.o 
	$(GCCGO) -L . -I . -c -g -o $@ $^
#
#
#
#
#
./Godeps/_workspace/src/github.com/cznic/fileutil/storage.o:  ./Godeps/_workspace/src/github.com/cznic/fileutil/storage/storage.go ./Godeps/_workspace/src/github.com/cznic/fileutil/storage/test_deps.go ./Godeps/_workspace/src/github.com/cznic/fileutil/storage/mem.go   ./Godeps/_workspace/src/github.com/cznic/fileutil/storage/file.go ./Godeps/_workspace/src/github.com/cznic/fileutil/storage/cache.go  ./Godeps/_workspace/src/github.com/cznic/fileutil/storage/probe.go  ./Godeps/_workspace/src/github.com/cznic/fileutil.o
	$(GCCGO) -L . -I . -c -g -o $@ $^
./Godeps/_workspace/src/github.com/mitchellh/ioprogress.o: ./Godeps/_workspace/src/github.com/mitchellh/ioprogress/reader.go ./Godeps/_workspace/src/github.com/mitchellh/ioprogress/draw.go 
	$(GCCGO) -L . -I . -c -g -o $@ $^
./networking/net.o:  ./networking/net/net.go
	$(GCCGO) -L . -I . -c -g -o $@ $^
./Godeps/_workspace/src/github.com/vishvananda/netlink/nl.o:   ./Godeps/_workspace/src/github.com/vishvananda/netlink/nl/route_linux.go ./Godeps/_workspace/src/github.com/vishvananda/netlink/nl/xfrm_linux.go   ./Godeps/_workspace/src/github.com/vishvananda/netlink/nl/addr_linux.go ./Godeps/_workspace/src/github.com/vishvananda/netlink/nl/link_linux.go  ./Godeps/_workspace/src/github.com/vishvananda/netlink/nl/xfrm_policy_linux.go ./Godeps/_workspace/src/github.com/vishvananda/netlink/nl/nl_linux.go ./Godeps/_workspace/src/github.com/vishvananda/netlink/nl/xfrm_state_linux.go
	$(GCCGO) -L . -I . -c -g -o $@ $^
#./Godeps/_workspace/src/github.com/peterbourgon/diskv/examples/super-simple-store.o: ./Godeps/_workspace/src/github.com/peterbourgon/diskv/examples/super-simple-store/super-simple-store.go
#	$(GCCGO) -L . -I . -c -g -o $@ $^
./Godeps/_workspace/src/github.com/appc/spec/discovery.o:  ./Godeps/_workspace/src/github.com/appc/spec/discovery/http.go ./Godeps/_workspace/src/github.com/appc/spec/discovery/doc.go  ./Godeps/_workspace/src/github.com/appc/spec/discovery/discovery.go  ./Godeps/_workspace/src/github.com/appc/spec/discovery/parse.go
	$(GCCGO) -L . -I . -c -g -o $@ $^
./Godeps/_workspace/src/github.com/cznic/ql/driver.o:  ./Godeps/_workspace/src/github.com/cznic/ql/driver/driver.go
	$(GCCGO) -L . -I . -c -g -o $@ $^
./networking/ipam/static.o: ./networking/ipam/static/main.go ./networking/ipam/static/config.go ./networking/ipam/static/allocator.go
	$(GCCGO) -L . -I . -c -g -o $@ $^
./Godeps/_workspace/src/github.com/cznic/mathutil/example2.o: ./Godeps/_workspace/src/github.com/cznic/mathutil/example2/example2.go
	$(GCCGO) -L . -I . -c -g -o $@ $^
./Godeps/_workspace/src/github.com/gorilla/mux.o: ./Godeps/_workspace/src/github.com/gorilla/mux/doc.go  ./Godeps/_workspace/src/github.com/gorilla/mux/route.go ./Godeps/_workspace/src/github.com/gorilla/mux/mux.go  ./Godeps/_workspace/src/github.com/gorilla/mux/regexp.go 
	$(GCCGO) -L . -I . -c -g -o $@ $^
./Godeps/_workspace/src/github.com/appc/spec/actool.o: ./Godeps/_workspace/src/github.com/appc/spec/actool/discover.go ./Godeps/_workspace/src/github.com/appc/spec/actool/validate.go ./Godeps/_workspace/src/github.com/appc/spec/actool/build.go ./Godeps/_workspace/src/github.com/appc/spec/actool/help.go ./Godeps/_workspace/src/github.com/appc/spec/actool/doc.go ./Godeps/_workspace/src/github.com/appc/spec/actool/actool.go ./Godeps/_workspace/src/github.com/appc/spec/actool/version.go
	$(GCCGO) -L . -I . -c -g -o $@ $^
./Godeps/_workspace/src/github.com/peterbourgon/diskv.o: ./Godeps/_workspace/src/github.com/peterbourgon/diskv/compression.go  ./Godeps/_workspace/src/github.com/peterbourgon/diskv/index.go  ./Godeps/_workspace/src/github.com/peterbourgon/diskv/diskv.go     ./Godeps/_workspace/src/github.com/petar/GoLLRB/llrb.o
	$(GCCGO) -L . -I . -c -g -o $@ $^
./networking/ipam/static/backend.o: ./networking/ipam/static/backend/store.go
	$(GCCGO) -L . -I . -c -g -o $@ $^
./Godeps/_workspace/src/github.com/cznic/bufs.o: ./Godeps/_workspace/src/github.com/cznic/bufs/bufs.go 
	$(GCCGO) -L . -I . -c -g -o $@ $^
./stage0.o: ./stage0/run.go ./stage0/entrypoint.go ./stage0/enter.go
	$(GCCGO) -L . -I . -c -g -o $@ $^
./cas.o: ./cas/db.go ./cas/remote.go ./cas/schema.go ./cas/cas.go ./cas/aciinfo.go  ./cas/utils.go  
	$(GCCGO) -L . -I . -c -g -o $@ $^
./Godeps/_workspace/src/golang.org/x/crypto/openpgp/packet.o:  ./Godeps/_workspace/src/golang.org/x/crypto/openpgp/packet/public_key.go ./Godeps/_workspace/src/golang.org/x/crypto/openpgp/packet/private_key.go   ./Godeps/_workspace/src/golang.org/x/crypto/openpgp/packet/userid.go ./Godeps/_workspace/src/golang.org/x/crypto/openpgp/packet/symmetrically_encrypted.go ./Godeps/_workspace/src/golang.org/x/crypto/openpgp/packet/literal.go ./Godeps/_workspace/src/golang.org/x/crypto/openpgp/packet/compressed.go ./Godeps/_workspace/src/golang.org/x/crypto/openpgp/packet/config.go    ./Godeps/_workspace/src/golang.org/x/crypto/openpgp/packet/one_pass_signature.go ./Godeps/_workspace/src/golang.org/x/crypto/openpgp/packet/encrypted_key.go ./Godeps/_workspace/src/golang.org/x/crypto/openpgp/packet/symmetric_key_encrypted.go ./Godeps/_workspace/src/golang.org/x/crypto/openpgp/packet/signature_v3.go ./Godeps/_workspace/src/golang.org/x/crypto/openpgp/packet/packet.go  ./Godeps/_workspace/src/golang.org/x/crypto/openpgp/packet/signature.go   ./Godeps/_workspace/src/golang.org/x/crypto/openpgp/packet/ocfb.go ./Godeps/_workspace/src/golang.org/x/crypto/openpgp/packet/opaque.go  ./Godeps/_workspace/src/golang.org/x/crypto/openpgp/packet/public_key_v3.go  ./Godeps/_workspace/src/golang.org/x/crypto/openpgp/packet/userattribute.go  ./Godeps/_workspace/src/golang.org/x/crypto/openpgp/packet/reader.go  ./Godeps/_workspace/src/golang.org/x/crypto/openpgp/elgamal.o ./Godeps/_workspace/src/golang.org/x/crypto/openpgp/s2k.o ./Godeps/_workspace/src/golang.org/x/crypto/cast5.o
	$(GCCGO) -L . -I . -c -g -o $@ $^
./pkg/lock.o: ./pkg/lock/dir.go 
	$(GCCGO) -L . -I . -c -g -o $@ $^
./Godeps/_workspace/src/github.com/coreos/go-systemd/unit.o:    ./Godeps/_workspace/src/github.com/coreos/go-systemd/unit/serialize.go ./Godeps/_workspace/src/github.com/coreos/go-systemd/unit/deserialize.go ./Godeps/_workspace/src/github.com/coreos/go-systemd/unit/option.go
	$(GCCGO) -L . -I . -c -g -o $@ $^
./Godeps/_workspace/src/github.com/cznic/strutil.o: ./Godeps/_workspace/src/github.com/cznic/strutil/strutil.go 
	$(GCCGO) -L . -I . -c -g -o $@ $^
./Godeps/_workspace/src/github.com/cznic/fileutil/falloc.o: ./Godeps/_workspace/src/github.com/cznic/fileutil/falloc/test_deps.go  ./Godeps/_workspace/src/github.com/cznic/fileutil/falloc/falloc.go ./Godeps/_workspace/src/github.com/cznic/fileutil/falloc/error.go ./Godeps/_workspace/src/github.com/cznic/fileutil/falloc/docs.go ./Godeps/_workspace/src/github.com/cznic/fileutil.o ./Godeps/_workspace/src/github.com/cznic/fileutil/storage.o ./Godeps/_workspace/src/github.com/cznic/mathutil.o
	$(GCCGO) -L . -I . -c -g -o $@ $^
./Godeps/_workspace/src/golang.org/x/crypto/openpgp/elgamal.o: ./Godeps/_workspace/src/golang.org/x/crypto/openpgp/elgamal/elgamal.go 
	$(GCCGO) -L . -I . -c -g -o $@ $^
./networking/ipam.o: ./networking/ipam/ipam.go networking/util.o
	$(GCCGO) -L . -I . -c -g -o $@ $^
./stage1.o: ./stage1/dummy.go
	$(GCCGO) -L . -I . -c -g -o $@ $^
./version.o: ./version/version.go
	$(GCCGO) -L . -I . -c -g -o $@ $^
./Godeps/_workspace/src/github.com/appc/spec/pkg/tarheader.o: ./Godeps/_workspace/src/github.com/appc/spec/pkg/tarheader/pop_linux.go ./Godeps/_workspace/src/github.com/appc/spec/pkg/tarheader/tarheader.go  ./Godeps/_workspace/src/github.com/appc/spec/pkg/tarheader/pop_posix.go ./Godeps/_workspace/src/github.com/appc/spec/pkg/tarheader/doc.go
	$(GCCGO) -L . -I . -c -g -o $@ $^

#./Godeps/_workspace/src/github.com/cznic/zappy/encode_cgo.go
#./Godeps/_workspace/src/github.com/cznic/zappy/decode_cgo.go
./Godeps/_workspace/src/github.com/cznic/zappy.o:   ./Godeps/_workspace/src/github.com/cznic/zappy/encode_nocgo.go ./Godeps/_workspace/src/github.com/cznic/zappy/decode_nocgo.go ./Godeps/_workspace/src/github.com/cznic/zappy/zappy.go  ./Godeps/_workspace/src/github.com/cznic/zappy/decode.go ./Godeps/_workspace/src/github.com/cznic/zappy/encode.go
	$(GCCGO) -L . -I . -c -g -o $@ $^
./Godeps/_workspace/src/golang.org/x/net/html/atom.o:  ./Godeps/_workspace/src/golang.org/x/net/html/atom/atom.go  ./Godeps/_workspace/src/golang.org/x/net/html/atom/table.go 
#./Godeps/_workspace/src/golang.org/x/net/html/atom/gen.go
	$(GCCGO) -L . -I . -c -g -o $@ $^
./common.o: ./common/common.go
	$(GCCGO) -L . -I . -c -g -o $@ $^
./networking/util.o: ./networking/util/route.go ./networking/util/cidr.go ./networking/util/skel.go ./networking/util/link.go ./networking/util/setns.go ./networking/util/ipmasq.go
	$(GCCGO) -L . -I . -c -g -o $@ $^
./Godeps/_workspace/src/golang.org/x/crypto/openpgp/clearsign.o: ./Godeps/_workspace/src/golang.org/x/crypto/openpgp/clearsign/clearsign.go 
	$(GCCGO) -L . -I . -c -g -o $@ $^
./Godeps/_workspace/src/github.com/cznic/mathutil/ff.o: ./Godeps/_workspace/src/github.com/cznic/mathutil/ff/main.go
	$(GCCGO) -L . -I . -c -g -o $@ $^
./Godeps/_workspace/src/golang.org/x/crypto/openpgp/armor.o: ./Godeps/_workspace/src/golang.org/x/crypto/openpgp/armor/encode.go ./Godeps/_workspace/src/golang.org/x/crypto/openpgp/armor/armor.go  ./Godeps/_workspace/src/golang.org/x/crypto/openpgp/errors.o
	$(GCCGO) -L . -I . -c -g -o $@ $^
./Godeps/_workspace/src/github.com/cznic/exp/lldb.o:     ./Godeps/_workspace/src/github.com/cznic/exp/lldb/memfiler.go ./Godeps/_workspace/src/github.com/cznic/exp/lldb/gb.go ./Godeps/_workspace/src/github.com/cznic/exp/lldb/simplefilefiler.go ./Godeps/_workspace/src/github.com/cznic/exp/lldb/xact.go   ./Godeps/_workspace/src/github.com/cznic/exp/lldb/osfiler.go ./Godeps/_workspace/src/github.com/cznic/exp/lldb/2pc.go ./Godeps/_workspace/src/github.com/cznic/exp/lldb/lldb.go  ./Godeps/_workspace/src/github.com/cznic/exp/lldb/errors.go ./Godeps/_workspace/src/github.com/cznic/exp/lldb/2pc_docs.go ./Godeps/_workspace/src/github.com/cznic/exp/lldb/falloc.go  ./Godeps/_workspace/src/github.com/cznic/exp/lldb/filer.go ./Godeps/_workspace/src/github.com/cznic/exp/lldb/btree.go 
	$(GCCGO) -L . -I . -c -g -o $@ $^
./Godeps/_workspace/src/github.com/petar/GoLLRB/llrb.o: ./Godeps/_workspace/src/github.com/petar/GoLLRB/llrb/llrb.go ./Godeps/_workspace/src/github.com/petar/GoLLRB/llrb/iterator.go ./Godeps/_workspace/src/github.com/petar/GoLLRB/llrb/llrb-stats.go  ./Godeps/_workspace/src/github.com/petar/GoLLRB/llrb/avgvar.go  ./Godeps/_workspace/src/github.com/petar/GoLLRB/llrb/util.go
	$(GCCGO) -L . -I . -c -g -o $@ $^
./rkt.o: ./rkt/gc.go ./rkt/metadatasvc.go ./rkt/version.go ./rkt/list.go  ./rkt/fetch.go ./rkt/rkt.go ./rkt/trust.go ./rkt/uuid.go ./rkt/status.go ./rkt/enter.go ./rkt/doc.go ./rkt/containers.go ./rkt/help.go ./rkt/run.go 
	$(GCCGO) -L . -I . -c -g -o $@ $^
./pkg/keystore.o:  ./pkg/keystore/keystore.go
	$(GCCGO) -L . -I . -c -g -o $@ $^
./Godeps/_workspace/src/golang.org/x/crypto/cast5.o: ./Godeps/_workspace/src/golang.org/x/crypto/cast5/cast5.go ./Godeps/_workspace/src/golang.org/x/crypto/cast5/cast5_test.go
	$(GCCGO) -L . -I . -c -g -o $@ $^
./networking.o: ./networking/networking.go ./networking/net-plugin.go ./networking/net.go
	$(GCCGO) -L . -I . -c -g -o $@ $^

#./Godeps/_workspace/src/github.com/cznic/fileutil/fileutil_openbsd.go ./Godeps/_workspace/src/github.com/cznic/fileutil/fileutil_windows.go ./Godeps/_workspace/src/github.com/cznic/fileutil/fileutil_arm.go
./Godeps/_workspace/src/github.com/cznic/fileutil.o: ./Godeps/_workspace/src/github.com/cznic/fileutil/test_deps.go  ./Godeps/_workspace/src/github.com/cznic/fileutil/fileutil_linux.go  ./Godeps/_workspace/src/github.com/cznic/fileutil/fileutil.go  ./Godeps/_workspace/src/github.com/cznic/fileutil.o
	$(GCCGO) -L . -I . -c -g -o $@ $^

./Godeps/_workspace/src/github.com/coreos/go-semver/semver.o: ./Godeps/_workspace/src/github.com/coreos/go-semver/semver/semver.go ./Godeps/_workspace/src/github.com/coreos/go-semver/semver/sort.go 
	$(GCCGO) -L . -I . -c -g -o $@ $^
./networking/net/veth.o: ./networking/net/veth/veth.go
	$(GCCGO) -L . -I . -c -g -o $@ $^


#	./Godeps/_workspace/src/github.com/vishvananda/netlink/netlink_unspecified.go
./Godeps/_workspace/src/github.com/vishvananda/netlink.o: ./Godeps/_workspace/src/github.com/vishvananda/netlink/xfrm_state.go ./Godeps/_workspace/src/github.com/vishvananda/netlink/neigh_linux.go    ./Godeps/_workspace/src/github.com/vishvananda/netlink/addr.go ./Godeps/_workspace/src/github.com/vishvananda/netlink/route.go ./Godeps/_workspace/src/github.com/vishvananda/netlink/xfrm_policy_linux.go   ./Godeps/_workspace/src/github.com/vishvananda/netlink/xfrm_policy.go   ./Godeps/_workspace/src/github.com/vishvananda/netlink/neigh.go ./Godeps/_workspace/src/github.com/vishvananda/netlink/link_linux.go  ./Godeps/_workspace/src/github.com/vishvananda/netlink/xfrm.go ./Godeps/_workspace/src/github.com/vishvananda/netlink/route_linux.go ./Godeps/_workspace/src/github.com/vishvananda/netlink/netlink.go ./Godeps/_workspace/src/github.com/vishvananda/netlink/xfrm_state_linux.go ./Godeps/_workspace/src/github.com/vishvananda/netlink/addr_linux.go ./Godeps/_workspace/src/github.com/vishvananda/netlink/link.go
	$(GCCGO) -L . -I . -c -g -o $@ $^
./Godeps/_workspace/src/github.com/coreos/go-iptables/iptables.o: ./Godeps/_workspace/src/github.com/coreos/go-iptables/iptables/iptables.go
	$(GCCGO) -L . -I . -c -g -o $@ $^


#./Godeps/_workspace/src/golang.org/x/crypto/openpgp/s2k/s2k_test.go
./Godeps/_workspace/src/golang.org/x/crypto/openpgp/s2k.o: ./Godeps/_workspace/src/golang.org/x/crypto/openpgp/s2k/s2k.go 
	$(GCCGO) -L . -I . -c -g -o $@ $^
./Godeps/_workspace/src/github.com/gorilla/context.o:  ./Godeps/_workspace/src/github.com/gorilla/context/context.go ./Godeps/_workspace/src/github.com/gorilla/context/doc.go
	$(GCCGO) -L . -I . -c -g -o $@ $^

./Godeps/_workspace/src/github.com/appc/spec/aci.o: ./Godeps/_workspace/src/github.com/appc/spec/aci/writer.go ./Godeps/_workspace/src/github.com/appc/spec/aci/file.go ./Godeps/_workspace/src/github.com/appc/spec/aci/build.go ./Godeps/_workspace/src/github.com/appc/spec/aci/doc.go  ./Godeps/_workspace/src/github.com/appc/spec/aci/layout.go ./Godeps/_workspace/src/github.com/appc/spec/schema.o
	$(GCCGO) -L . -I . -c -g -o $@ $^
./networking/net/bridge.o: ./networking/net/bridge/bridge.go
	$(GCCGO) -L . -I . -c -g -o $@ $^

./Godeps/_workspace/src/github.com/appc/spec/schema.o: ./Godeps/_workspace/src/github.com/appc/spec/schema/version.go  ./Godeps/_workspace/src/github.com/appc/spec/schema/kind.go ./Godeps/_workspace/src/github.com/appc/spec/schema/doc.go ./Godeps/_workspace/src/github.com/appc/spec/schema/image.go ./Godeps/_workspace/src/github.com/appc/spec/schema/container.go  ./Godeps/_workspace/src/github.com/appc/spec/schema/types.o
	$(GCCGO) -L . -I . -c -g -o $@ $^
./stage1/init.o: ./stage1/init/path.go ./stage1/init/init.go  ./stage1/init/registration.go ./stage1/init/container.go
	$(GCCGO) -L . -I . -c -g -o $@ $^
./Godeps/_workspace/src/github.com/cznic/ql.o: ./Godeps/_workspace/src/github.com/cznic/ql/httpfs.go  ./Godeps/_workspace/src/github.com/cznic/ql/coerce.go ./Godeps/_workspace/src/github.com/cznic/ql/scanner.go ./Godeps/_workspace/src/github.com/cznic/ql/introspection.go  ./Godeps/_workspace/src/github.com/cznic/ql/expr.go   ./Godeps/_workspace/src/github.com/cznic/ql/storage.go ./Godeps/_workspace/src/github.com/cznic/ql/ql.go  ./Godeps/_workspace/src/github.com/cznic/ql/parser.go  ./Godeps/_workspace/src/github.com/cznic/ql/file.go ./Godeps/_workspace/src/github.com/cznic/ql/builtin.go ./Godeps/_workspace/src/github.com/cznic/ql/doc.go ./Godeps/_workspace/src/github.com/cznic/ql/etc.go ./Godeps/_workspace/src/github.com/cznic/ql/stmt.go  ./Godeps/_workspace/src/github.com/cznic/ql/driver.go ./Godeps/_workspace/src/github.com/cznic/ql/blob.go ./Godeps/_workspace/src/github.com/cznic/ql/errors.go 
#./Godeps/_workspace/src/github.com/cznic/ql/btree.go
#./Godeps/_workspace/src/github.com/cznic/ql/mem.go

#main ./Godeps/_workspace/src/github.com/cznic/ql/helper.go 
	$(GCCGO) -L . -I . -c -g -o $@ $^
./Godeps/_workspace/src/github.com/cznic/mathutil.o: ./Godeps/_workspace/src/github.com/cznic/mathutil/primes.go ./Godeps/_workspace/src/github.com/cznic/mathutil/envelope.go ./Godeps/_workspace/src/github.com/cznic/mathutil/permute.go ./Godeps/_workspace/src/github.com/cznic/mathutil/rnd.go ./Godeps/_workspace/src/github.com/cznic/mathutil/bits.go ./Godeps/_workspace/src/github.com/cznic/mathutil/tables.go  ./Godeps/_workspace/src/github.com/cznic/mathutil/rat.go ./Godeps/_workspace/src/github.com/cznic/mathutil/mathutil.go ./Godeps/_workspace/src/github.com/cznic/mathutil/test_deps.go
	$(GCCGO) -L . -I . -c -g -o $@ $^
./Godeps/_workspace/src/github.com/cznic/ql/ql.o: ./Godeps/_workspace/src/github.com/cznic/ql/ql/main.go
	$(GCCGO) -L . -I . -c -g -o $@ $^
./Godeps/_workspace/src/golang.org/x/crypto/openpgp.o: ./Godeps/_workspace/src/golang.org/x/crypto/openpgp/write.go   ./Godeps/_workspace/src/golang.org/x/crypto/openpgp/read.go  ./Godeps/_workspace/src/golang.org/x/crypto/openpgp/canonical_text.go ./Godeps/_workspace/src/golang.org/x/crypto/openpgp/keys.go  ./Godeps/_workspace/src/golang.org/x/crypto/openpgp/armor.o ./Godeps/_workspace/src/golang.org/x/crypto/openpgp/errors.o ./Godeps/_workspace/src/golang.org/x/crypto/openpgp/packet.o
	$(GCCGO) -L . -I . -c -g -o $@ $^
./Godeps/_workspace/src/code.google.com/p/go-uuid/uuid.o: ./Godeps/_workspace/src/code.google.com/p/go-uuid/uuid/doc.go ./Godeps/_workspace/src/code.google.com/p/go-uuid/uuid/version1.go ./Godeps/_workspace/src/code.google.com/p/go-uuid/uuid/node.go  ./Godeps/_workspace/src/code.google.com/p/go-uuid/uuid/dce.go ./Godeps/_workspace/src/code.google.com/p/go-uuid/uuid/time.go ./Godeps/_workspace/src/code.google.com/p/go-uuid/uuid/hash.go ./Godeps/_workspace/src/code.google.com/p/go-uuid/uuid/version4.go ./Godeps/_workspace/src/code.google.com/p/go-uuid/uuid/uuid.go ./Godeps/_workspace/src/code.google.com/p/go-uuid/uuid/util.go
	$(GCCGO) -L . -I . -c -g -o $@ $^
./Godeps/_workspace/src/github.com/cznic/mathutil/example.o: ./Godeps/_workspace/src/github.com/cznic/mathutil/example/example.go
	$(GCCGO) -L . -I . -c -g -o $@ $^
./Godeps/_workspace/src/golang.org/x/net/html.o:  ./Godeps/_workspace/src/golang.org/x/net/html/node.go   ./Godeps/_workspace/src/golang.org/x/net/html/doc.go ./Godeps/_workspace/src/golang.org/x/net/html/escape.go  ./Godeps/_workspace/src/golang.org/x/net/html/entity.go   ./Godeps/_workspace/src/golang.org/x/net/html/foreign.go ./Godeps/_workspace/src/golang.org/x/net/html/const.go ./Godeps/_workspace/src/golang.org/x/net/html/token.go ./Godeps/_workspace/src/golang.org/x/net/html/render.go ./Godeps/_workspace/src/golang.org/x/net/html/doctype.go  ./Godeps/_workspace/src/golang.org/x/net/html/parse.go
	$(GCCGO) -L . -I . -c -g -o $@ $^
./Godeps/_workspace/src/golang.org/x/net/html/charset.o: ./Godeps/_workspace/src/golang.org/x/net/html/charset/table.go ./Godeps/_workspace/src/golang.org/x/net/html/charset/charset.go ./Godeps/_workspace/src/golang.org/x/net/html/charset/gen.go 
	$(GCCGO) -L . -I . -c -g -o $@ $^
./networking/ipam/static/backend/disk.o: ./networking/ipam/static/backend/disk/backend.go ./pkg/lock.o 
	$(GCCGO) -L . -I . -c -g -o $@ $^
./pkg/keystore/keystoretest.o: ./pkg/keystore/keystoretest/opengpg.go  ./pkg/keystore/keystoretest/keymap.go
	$(GCCGO) -L . -I . -c -g -o $@ $^
#main ./pkg/keystore/keystoretest/keygen.go
./Godeps/_workspace/src/github.com/appc/docker2aci/tarball.o: ./Godeps/_workspace/src/github.com/appc/docker2aci/tarball/walk.go ./Godeps/_workspace/src/github.com/appc/docker2aci/tarball/tarfile.go
	$(GCCGO) -L . -I . -c -g -o $@ $^
./Godeps/_workspace/src/github.com/cznic/ql/design.o: ./Godeps/_workspace/src/github.com/cznic/ql/design/doc.go
	$(GCCGO) -L . -I . -c -g -o $@ $^
./Godeps/_workspace/src/github.com/appc/spec/schema/types.o: ./Godeps/_workspace/src/github.com/appc/spec/schema/types/errors.go ./Godeps/_workspace/src/github.com/appc/spec/schema/types/volume.go ./Godeps/_workspace/src/github.com/appc/spec/schema/types/app.go  ./Godeps/_workspace/src/github.com/appc/spec/schema/types/labels.go  ./Godeps/_workspace/src/github.com/appc/spec/schema/types/annotations.go ./Godeps/_workspace/src/github.com/appc/spec/schema/types/exec.go ./Godeps/_workspace/src/github.com/appc/spec/schema/types/dependencies.go   ./Godeps/_workspace/src/github.com/appc/spec/schema/types/hash.go ./Godeps/_workspace/src/github.com/appc/spec/schema/types/doc.go  ./Godeps/_workspace/src/github.com/appc/spec/schema/types/acname.go ./Godeps/_workspace/src/github.com/appc/spec/schema/types/semver.go  ./Godeps/_workspace/src/github.com/appc/spec/schema/types/ackind.go ./Godeps/_workspace/src/github.com/appc/spec/schema/types/port.go ./Godeps/_workspace/src/github.com/appc/spec/schema/types/isolator.go   ./Godeps/_workspace/src/github.com/appc/spec/schema/types/environment.go ./Godeps/_workspace/src/github.com/appc/spec/schema/types/event_handler.go  ./Godeps/_workspace/src/github.com/appc/spec/schema/types/mountpoint.go     ./Godeps/_workspace/src/github.com/appc/spec/schema/types/uuid.go  ./Godeps/_workspace/src/github.com/appc/spec/schema/types/date.go ./Godeps/_workspace/src/github.com/appc/spec/schema/types/url.go ./Godeps/_workspace/src/github.com/coreos/go-semver/semver.o
	$(GCCGO) -L . -I . -c -g -o $@ $^

#./Godeps/_workspace/src/github.com/cznic/mathutil/mersenne.o:  ./Godeps/_workspace/src/github.com/cznic/mathutil/mersenne/mersenne.go
#	$(GCCGO) -L . -I . -c -g -o $@ $^
#  "github.com/remyoudompheng/bigfft"

Godeps/_workspace/src/github.com/appc/spec/discovery/discovery.go: Godeps/_workspace/src/golang.org/x/net/html.o
Godeps/_workspace/src/github.com/appc/spec/discovery/discovery.go: Godeps/_workspace/src/golang.org/x/net/html/atom.o
Godeps/_workspace/src/github.com/cznic/ql/driver/driver.go: Godeps/_workspace/src/github.com/cznic/ql.o 
networking/ipam/static/main.go: networking/ipam.o
networking/ipam/static/main.go: networking/ipam/static/backend/disk.o
networking/ipam/static/main.go: networking/util.o
networking/ipam/static/config.go: networking/net.o
networking/ipam/static/allocator.go: networking/ipam.o
networking/ipam/static/allocator.go: networking/ipam/static/backend.o
networking/ipam/static/allocator.go: networking/util.o
Godeps/_workspace/src/github.com/gorilla/mux/mux.go: Godeps/_workspace/src/github.com/gorilla/context.o
Godeps/_workspace/src/github.com/appc/spec/actool/discover.go: Godeps/_workspace/src/github.com/appc/spec/discovery.o
stage0/run.go: Godeps/_workspace/src/code.google.com/p/go-uuid/uuid.o
stage0/run.go: cas.o
stage0/run.go: common.o
stage0/run.go: pkg/lock.o
stage0/run.go: pkg/tar.o
stage0/run.go: version.o
stage0/entrypoint.go: common.o
stage0/enter.go: common.o
cas/db.go: pkg/lock.o
cas/db.go: Godeps/_workspace/src/github.com/cznic/ql/driver.o
cas/remote.go: pkg/keystore.o
networking/ipam/ipam.go: Godeps/_workspace/src/github.com/vishvananda/netlink.o
networking/ipam/ipam.go: networking/util.o
stage1/dummy.go: Godeps/_workspace/src/github.com/appc/spec/actool.o
networking/util/route.go: Godeps/_workspace/src/github.com/vishvananda/netlink.o
networking/util/link.go: Godeps/_workspace/src/github.com/vishvananda/netlink.o
networking/util/ipmasq.go: Godeps/_workspace/src/github.com/coreos/go-iptables/iptables.o
Godeps/_workspace/src/github.com/cznic/exp/lldb/falloc.go: Godeps/_workspace/src/github.com/cznic/zappy.o
rkt/metadatasvc.go: Godeps/_workspace/src/github.com/gorilla/mux.o
rkt/metadatasvc.go: common.o
rkt/version.go: version.o
rkt/list.go: common.o
rkt/fetch.go: cas.o
rkt/fetch.go: pkg/keystore.o
rkt/fetch.go: Godeps/_workspace/src/github.com/appc/spec/discovery.o
rkt/rkt.go: pkg/keystore.o
rkt/trust.go: Godeps/_workspace/src/github.com/appc/spec/discovery.o
rkt/trust.go: pkg/keystore.o
rkt/enter.go: common.o
rkt/enter.go: stage0.o
rkt/containers.go: pkg/lock.o
rkt/help.go: version.o
rkt/run.go: cas.o
rkt/run.go: pkg/keystore.o
rkt/run.go: stage0.o
networking/networking.go: Godeps/_workspace/src/github.com/vishvananda/netlink.o
networking/networking.go: networking/util.o
networking/net-plugin.go: common.o
networking/net-plugin.go: networking/net.o
networking/net.go: common.o
networking/net.go: networking/net.o
networking/net/veth/veth.go: Godeps/_workspace/src/github.com/vishvananda/netlink.o
networking/net/veth/veth.go: networking/ipam.o
networking/net/veth/veth.go: networking/net.o
networking/net/veth/veth.go: networking/util.o
networking/net/bridge/bridge.go: Godeps/_workspace/src/github.com/vishvananda/netlink.o
networking/net/bridge/bridge.go: networking/ipam.o
networking/net/bridge/bridge.go: networking/net.o
networking/net/bridge/bridge.go: networking/util.o
Godeps/_workspace/src/github.com/cznic/ql/file.go: Godeps/_workspace/src/github.com/cznic/exp/lldb.o
Godeps/_workspace/src/github.com/cznic/ql/ql/main.go: Godeps/_workspace/src/github.com/cznic/ql.o
Godeps/_workspace/src/golang.org/x/net/html/node.go: Godeps/_workspace/src/golang.org/x/net/html/atom.o
Godeps/_workspace/src/golang.org/x/net/html/token.go: Godeps/_workspace/src/golang.org/x/net/html/atom.o
Godeps/_workspace/src/golang.org/x/net/html/parse.go: Godeps/_workspace/src/golang.org/x/net/html/atom.o
# Godeps/_workspace/src/golang.org/x/net/html/charset/table.go: golang.org/x/text/encoding.o
# Godeps/_workspace/src/golang.org/x/net/html/charset/table.go: golang.org/x/text/encoding/charmap.o
# Godeps/_workspace/src/golang.org/x/net/html/charset/table.go: golang.org/x/text/encoding/japanese.o
# Godeps/_workspace/src/golang.org/x/net/html/charset/table.go: golang.org/x/text/encoding/korean.o
# Godeps/_workspace/src/golang.org/x/net/html/charset/table.go: golang.org/x/text/encoding/simplifiedchinese.o
# Godeps/_workspace/src/golang.org/x/net/html/charset/table.go: golang.org/x/text/encoding/traditionalchinese.o
# Godeps/_workspace/src/golang.org/x/net/html/charset/table.go: golang.org/x/text/encoding/unicode.o
# Godeps/_workspace/src/golang.org/x/net/html/charset/charset.go: Godeps/_workspace/src/golang.org/x/net/html.o
# Godeps/_workspace/src/golang.org/x/net/html/charset/charset.go: golang.org/x/text/encoding.o
# Godeps/_workspace/src/golang.org/x/net/html/charset/charset.go: golang.org/x/text/encoding/charmap.o
# Godeps/_workspace/src/golang.org/x/net/html/charset/charset.go: golang.org/x/text/transform.o

networking/ipam/static/backend/disk/backend.go: pkg/lock.o
#Godeps/_workspace/src/github.com/cznic/mathutil/mersenne/mersenne.go: ./Godeps/_workspace/src/github.com/remyoudompheng/bigfft.o


all_pkgs:./pkg/aci.o ./Godeps/_workspace/src/github.com/camlistore/lock.o  ./Godeps/_workspace/src/golang.org/x/crypto/openpgp/errors.o ./Godeps/_workspace/src/github.com/cznic/sortutil.o ./Godeps/_workspace/src/github.com/cznic/mathutil/example3.o ./Godeps/_workspace/src/github.com/cznic/fileutil/hdb.o ./Godeps/_workspace/src/github.com/appc/docker2aci/lib.o ./pkg/tar.o ./Godeps/_workspace/src/github.com/peterbourgon/diskv/examples/content-addressable-store.o ./Godeps/_workspace/src/github.com/cznic/fileutil/storage.o ./Godeps/_workspace/src/github.com/mitchellh/ioprogress.o ./networking/net.o ./Godeps/_workspace/src/github.com/vishvananda/netlink/nl.o  ./Godeps/_workspace/src/github.com/appc/spec/discovery.o ./Godeps/_workspace/src/github.com/cznic/ql/driver.o ./networking/ipam/static.o ./Godeps/_workspace/src/github.com/cznic/mathutil/example2.o ./Godeps/_workspace/src/github.com/gorilla/mux.o ./Godeps/_workspace/src/github.com/appc/spec/actool.o ./Godeps/_workspace/src/github.com/peterbourgon/diskv.o ./networking/ipam/static/backend.o ./Godeps/_workspace/src/github.com/cznic/bufs.o ./stage0.o ./cas.o ./Godeps/_workspace/src/golang.org/x/crypto/openpgp/packet.o ./pkg/lock.o ./Godeps/_workspace/src/github.com/coreos/go-systemd/unit.o ./Godeps/_workspace/src/github.com/cznic/strutil.o ./Godeps/_workspace/src/github.com/cznic/fileutil/falloc.o ./Godeps/_workspace/src/golang.org/x/crypto/openpgp/elgamal.o ./networking/ipam.o ./stage1.o ./version.o ./Godeps/_workspace/src/github.com/appc/spec/pkg/tarheader.o ./Godeps/_workspace/src/github.com/cznic/zappy.o ./Godeps/_workspace/src/golang.org/x/net/html/atom.o ./common.o ./networking/util.o ./Godeps/_workspace/src/golang.org/x/crypto/openpgp/clearsign.o ./Godeps/_workspace/src/github.com/cznic/mathutil/ff.o ./Godeps/_workspace/src/golang.org/x/crypto/openpgp/armor.o ./Godeps/_workspace/src/github.com/cznic/exp/lldb.o ./Godeps/_workspace/src/github.com/petar/GoLLRB/llrb.o ./rkt.o ./pkg/keystore.o ./Godeps/_workspace/src/golang.org/x/crypto/cast5.o ./networking.o ./Godeps/_workspace/src/github.com/cznic/fileutil.o ./Godeps/_workspace/src/github.com/coreos/go-semver/semver.o ./networking/net/veth.o ./Godeps/_workspace/src/github.com/vishvananda/netlink.o ./Godeps/_workspace/src/github.com/coreos/go-iptables/iptables.o ./Godeps/_workspace/src/golang.org/x/crypto/openpgp/s2k.o ./Godeps/_workspace/src/github.com/gorilla/context.o ./Godeps/_workspace/src/github.com/appc/spec/aci.o ./networking/net/bridge.o ./Godeps/_workspace/src/github.com/appc/spec/schema.o ./stage1/init.o ./Godeps/_workspace/src/github.com/cznic/ql.o ./Godeps/_workspace/src/github.com/cznic/mathutil.o ./Godeps/_workspace/src/github.com/cznic/ql/ql.o ./Godeps/_workspace/src/golang.org/x/crypto/openpgp.o ./Godeps/_workspace/src/code.google.com/p/go-uuid/uuid.o ./Godeps/_workspace/src/github.com/cznic/mathutil/example.o ./Godeps/_workspace/src/golang.org/x/net/html.o  ./networking/ipam/static/backend/disk.o ./pkg/keystore/keystoretest.o ./Godeps/_workspace/src/github.com/appc/docker2aci/tarball.o ./Godeps/_workspace/src/github.com/cznic/ql/design.o ./Godeps/_workspace/src/github.com/appc/spec/schema/types.o 

#./Godeps/_workspace/src/github.com/cznic/mathutil/mersenne.o

#./Godeps/_workspace/src/golang.org/x/net/html/charset.o
