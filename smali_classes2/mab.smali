.class Lmab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llyo;


# instance fields
.field final synthetic a:Llyl;

.field final synthetic b:Lkva;

.field final synthetic c:Llzx;


# direct methods
.method constructor <init>(Llzx;Llyl;Lkva;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lmab;->c:Llzx;

    iput-object p2, p0, Lmab;->a:Llyl;

    iput-object p3, p0, Lmab;->b:Lkva;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lmab;->a:Llyl;

    invoke-virtual {v0}, Llyl;->dismiss()V

    .line 301
    iget-object v0, p0, Lmab;->b:Lkva;

    iget-object v1, p0, Lmab;->c:Llzx;

    invoke-virtual {v1}, Llzx;->b()Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkva;->a(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lmab;->b:Lkva;

    iget-object v1, p0, Lmab;->c:Llzx;

    invoke-virtual {v1}, Llzx;->b()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkva;->a(Ljava/lang/Double;)V

    .line 303
    iget-object v0, p0, Lmab;->c:Llzx;

    iget-object v1, p0, Lmab;->b:Lkva;

    invoke-static {v0, v1}, Llzx;->a(Llzx;Lkva;)V

    .line 304
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lmab;->a:Llyl;

    invoke-virtual {v0}, Llyl;->dismiss()V

    .line 309
    return-void
.end method
