.class Llxs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llug;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Llxr;


# direct methods
.method constructor <init>(Llxr;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Llxs;->b:Llxr;

    iput-object p2, p0, Llxs;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .prologue
    .line 150
    iget-object v1, p0, Llxs;->b:Llxr;

    iget-object v0, p0, Llxs;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvq;

    invoke-static {v0}, Llxv;->a(Lkvq;)Llxv;

    move-result-object v0

    invoke-static {v1, v0}, Llxr;->a(Llxr;Llxv;)Llxv;

    .line 151
    iget-object v0, p0, Llxs;->b:Llxr;

    invoke-static {v0}, Llxr;->a(Llxr;)Llxv;

    move-result-object v0

    iget-object v1, p0, Llxs;->b:Llxr;

    invoke-virtual {v1}, Llxr;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog-sinister-info"

    invoke-virtual {v0, v1, v2}, Llxv;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 152
    return-void
.end method
