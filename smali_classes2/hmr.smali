.class Lhmr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhlw;


# instance fields
.field final synthetic a:Lhmp;


# direct methods
.method constructor <init>(Lhmp;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lhmr;->a:Lhmp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lhmr;->a:Lhmp;

    invoke-static {v0}, Lhmp;->a(Lhmp;)Lhxl;

    move-result-object v0

    invoke-interface {v0}, Lhxl;->a()I

    move-result v0

    invoke-static {v0}, Lhnj;->b(I)V

    .line 184
    iget-object v0, p0, Lhmr;->a:Lhmp;

    invoke-static {v0}, Lhmp;->a(Lhmp;)Lhxl;

    move-result-object v0

    invoke-interface {v0}, Lhxl;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhnj;->a(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lhmr;->a:Lhmp;

    invoke-static {v0}, Lhmp;->a(Lhmp;)Lhxl;

    move-result-object v0

    invoke-interface {v0}, Lhxl;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhnj;->b(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lhmr;->a:Lhmp;

    invoke-static {v0}, Lhmp;->a(Lhmp;)Lhxl;

    move-result-object v0

    invoke-interface {v0}, Lhxl;->B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhnj;->b(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lhmr;->a:Lhmp;

    invoke-static {v0}, Lhmp;->b(Lhmp;)Lhmk;

    move-result-object v0

    iget-object v1, p0, Lhmr;->a:Lhmp;

    invoke-static {v1}, Lhmp;->a(Lhmp;)Lhxl;

    move-result-object v1

    invoke-interface {v0, v1}, Lhmk;->c(Lhxl;)V

    .line 188
    iget-object v0, p0, Lhmr;->a:Lhmp;

    invoke-static {v0}, Lhmp;->b(Lhmp;)Lhmk;

    move-result-object v0

    invoke-interface {v0}, Lhmk;->a()V

    .line 189
    invoke-static {}, Lhnj;->b()V

    .line 190
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lhmr;->a:Lhmp;

    invoke-static {v0}, Lhmp;->b(Lhmp;)Lhmk;

    move-result-object v0

    iget-object v1, p0, Lhmr;->a:Lhmp;

    invoke-static {v1}, Lhmp;->a(Lhmp;)Lhxl;

    move-result-object v1

    invoke-interface {v0, v1}, Lhmk;->c(Lhxl;)V

    .line 195
    iget-object v0, p0, Lhmr;->a:Lhmp;

    invoke-static {v0}, Lhmp;->b(Lhmp;)Lhmk;

    move-result-object v0

    invoke-interface {v0}, Lhmk;->a()V

    .line 196
    invoke-static {}, Lhnj;->b()V

    .line 197
    return-void
.end method
