# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit go-module

EGO_PN="github.com/getantibody/antibody"
# NOTE: Keep EGO_SUM in sync with go.sum.
EGO_SUM=(
	"github.com/alecthomas/template v0.0.0-20190718012654-fb15b899a751 h1:JYp7IbQjafoB+tBA3gMyHYHrpOtNuDiK/uB5uXxq5wM="
	"github.com/alecthomas/template v0.0.0-20190718012654-fb15b899a751/go.mod h1:LOuyumcjzFXgccqObfd/Ljyb9UuFJ6TxHnclSeseNhc="
	"github.com/alecthomas/units v0.0.0-20190924025748-f65c72e2690d h1:UQZhZ2O0vMHr2cI+DC1Mbh0TJxzA3RcLoMsFw+aXw7E="
	"github.com/alecthomas/units v0.0.0-20190924025748-f65c72e2690d/go.mod h1:rBZYJk541a8SKzHPHnH3zbiI+7dagKZ0cgpgrD7Fyho="
	"github.com/davecgh/go-spew v1.1.0/go.mod h1:J7Y8YcW2NihsgmVo/mv3lAwl/skON4iLHjSsI+c5H38="
	"github.com/davecgh/go-spew v1.1.1 h1:vj9j/u1bqnvCEfJOwUhtlOARqs3+rkHYY13jYWTU97c="
	"github.com/davecgh/go-spew v1.1.1/go.mod h1:J7Y8YcW2NihsgmVo/mv3lAwl/skON4iLHjSsI+c5H38="
	"github.com/getantibody/folder v1.0.0 h1:CFtD8CQ45Qyq0WyjT3zZ28KzfbrCuTBFmyIl3BVKAWo="
	"github.com/getantibody/folder v1.0.0/go.mod h1:9Kd7ZFOzjDuqK8f5bqgdkr9yKk7pVWoiir7nVR18Drk="
	"github.com/pmezard/go-difflib v1.0.0 h1:4DBwDE0NGyQoBHbLQYPwSUPoCMWR5BEzIk/f1lZbAQM="
	"github.com/pmezard/go-difflib v1.0.0/go.mod h1:iKH77koFhYxTK1pcRnkKkqfTogsbg7gZNVY4sRDYZ/4="
	"github.com/stretchr/objx v0.1.0 h1:4G4v2dO3VZwixGIRoQ5Lfboy6nUhCyYzaqnIAPPhYs4="
	"github.com/stretchr/objx v0.1.0/go.mod h1:HFkY916IF+rwdDfMAkV7OtwuqBVzrE8GR6GFx+wExME="
	"github.com/stretchr/testify v1.4.0 h1:2E4SXV/wtOkTonXsotYi4li6zVWxYlZuYNCXe9XRJyk="
	"github.com/stretchr/testify v1.4.0/go.mod h1:j7eGeouHqKxXV5pUuKE4zz7dFj8WfuZ+81PSLYec5m4="
	"github.com/stretchr/testify v1.5.1 h1:nOGnQDM7FYENwehXlg/kFVnos3rEvtKTjRvOWSzb6H4="
	"github.com/stretchr/testify v1.5.1/go.mod h1:5W2xD1RspED5o8YsWQXVCued0rvSQ+mT+I5cxcmMvtA="
	"golang.org/x/crypto v0.0.0-20190308221718-c2843e01d9a2/go.mod h1:djNgcEr1/C05ACkg1iLfiJU5Ep61QUkGW8qpdssI0+w="
	"golang.org/x/crypto v0.0.0-20200320181102-891825fb96df h1:lDWgvUvNnaTnNBc/dwOty86cFeKoKWbwy2wQj0gIxbU="
	"golang.org/x/crypto v0.0.0-20200320181102-891825fb96df/go.mod h1:LzIPMQfyMNhhGPhUkYOs5KpL4U8rLKemX1yGLhDgUto="
	"golang.org/x/net v0.0.0-20190404232315-eb5bcb51f2a3/go.mod h1:t9HGtf8HONx5eT2rtn7q6eTqICYqUVnKs3thJo3Qplg="
	"golang.org/x/sync v0.0.0-20200317015054-43a5402ce75a h1:WXEvlFVvvGxCJLG6REjsT03iWnKLEWinaScsxF2Vm2o="
	"golang.org/x/sync v0.0.0-20200317015054-43a5402ce75a/go.mod h1:RxMgew5VJxzue5/jJTE5uejpjVlOe/izrB70Jof72aM="
	"golang.org/x/sys v0.0.0-20190215142949-d0b11bdaac8a/go.mod h1:STP8DvDyc/dI5b8T5hshtkjS+E42TnysNCUPdjciGhY="
	"golang.org/x/sys v0.0.0-20190412213103-97732733099d h1:+R4KGOnez64A81RvjARKc4UT5/tI9ujCIVX+P5KiHuI="
	"golang.org/x/sys v0.0.0-20190412213103-97732733099d/go.mod h1:h1NjWce9XRLGQEsW7wpKNCjG9DtNlClVuFLEZdDNbEs="
	"golang.org/x/sys v0.0.0-20200212091648-12a6c2dcc1e4 h1:sfkvUWPNGwSV+8/fNqctR5lS2AqCSqYwXdrjCxp/dXo="
	"golang.org/x/sys v0.0.0-20200212091648-12a6c2dcc1e4/go.mod h1:h1NjWce9XRLGQEsW7wpKNCjG9DtNlClVuFLEZdDNbEs="
	"golang.org/x/text v0.3.0/go.mod h1:NqM8EUOU14njkJ3fqMW+pc6Ldnwhi/IjpwHt7yyuwOQ="
	"gopkg.in/alecthomas/kingpin.v2 v2.2.6 h1:jMFz6MfLP0/4fUyZle81rXUoxOBFi19VUFKVDOQfozc="
	"gopkg.in/alecthomas/kingpin.v2 v2.2.6/go.mod h1:FMv+mEhP44yOT+4EoQTLFTRgOQ1FBLkstjWtayDeSgw="
	"gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405 h1:yhCVgyC4o1eVCa2tZl7eS0r+SDo693bJlVdllGtEeKM="
	"gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405/go.mod h1:Co6ibVJAznAaIkqp8huTwlJQCZ016jof/cbN4VW5Yz0="
	"gopkg.in/yaml.v2 v2.2.2 h1:ZCJp+EgiOT7lHqUV2J862kp8Qj64Jo6az82+3Td9dZw="
	"gopkg.in/yaml.v2 v2.2.2/go.mod h1:hI93XBmqTisBFMUTm0b8Fm+jr3Dg1NNxqwp+5A1VGuI="
)
go-module_set_globals

DESCRIPTION="Fast Zsh plugin manager"
HOMEPAGE="https://getantibody.github.io/"
SRC_URI="
	https://github.com/getantibody/antibody/archive/v${PV}.tar.gz -> ${P}.tar.gz
	${EGO_SUM_SRC_URI}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	app-shells/zsh[unicode]
	dev-vcs/git
"

PATCHES=( "${FILESDIR}/6.0.1-remove-failing-tests.patch" )

src_compile() {
	local -a mygoargs=(
		-ldflags "-X main.version=${PV}"
	)
	go build "${mygoargs[@]}" || die
}

src_install() {
	dobin antibody
	einstalldocs
}
