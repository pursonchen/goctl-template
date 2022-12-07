package {{.pkgName}}

import (
	{{.imports}}
)

type {{.logic}} struct {
	logx.Logger
	ctx    context.Context
	svcCtx *svc.ServiceContext
}

func New{{.logic}}(ctx context.Context, svcCtx *svc.ServiceContext, r *http.Request) *{{.logic}} {
	return &{{.logic}}{
		Logger: logx.WithContext(ctx),
		ctx:    ctx,
		svcCtx: svcCtx,
		r:      r,
	}
}

func (l *{{.logic}}) {{.function}}({{.request}}) {{.responseType}} {
	// todo: add your logic here and delete this line

	{{.returnString}}
}
