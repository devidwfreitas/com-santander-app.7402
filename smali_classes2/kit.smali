.class Lkit;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkhj;


# instance fields
.field final synthetic a:Lkip;


# direct methods
.method constructor <init>(Lkip;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lkit;->a:Lkip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 234
    iget-object v0, p0, Lkit;->a:Lkip;

    invoke-static {v0, p2}, Lkip;->a(Lkip;I)I

    .line 235
    invoke-static {p1}, Lkip;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 237
    iget-object v0, p0, Lkit;->a:Lkip;

    invoke-static {v0}, Lkip;->a(Lkip;)Lkio;

    move-result-object v0

    invoke-interface {v0}, Lkio;->c()V

    .line 238
    iget-object v0, p0, Lkit;->a:Lkip;

    invoke-static {v0}, Lkip;->a(Lkip;)Lkio;

    move-result-object v0

    invoke-interface {v0, p1}, Lkio;->a(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lkit;->a:Lkip;

    invoke-static {v0}, Lkip;->a(Lkip;)Lkio;

    move-result-object v0

    const-string v1, ""

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lkio;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lkit;->a:Lkip;

    invoke-static {v0}, Lkip;->a(Lkip;)Lkio;

    move-result-object v0

    const-string v1, ""

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lkio;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lkit;->a:Lkip;

    invoke-static {v0}, Lkip;->c(Lkip;)Lkig;

    move-result-object v0

    invoke-virtual {v0, p2}, Lkig;->a(I)V

    .line 243
    iget-object v0, p0, Lkit;->a:Lkip;

    invoke-static {v0}, Lkip;->c(Lkip;)Lkig;

    move-result-object v0

    invoke-virtual {v0}, Lkig;->b()V

    .line 244
    iget-object v0, p0, Lkit;->a:Lkip;

    invoke-static {v0}, Lkip;->a(Lkip;)Lkio;

    move-result-object v0

    invoke-interface {v0}, Lkio;->h()V

    .line 245
    return-void
.end method
