.class Lhrw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhsh;


# instance fields
.field final synthetic a:Lhrv;


# direct methods
.method constructor <init>(Lhrv;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lhrw;->a:Lhrv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lhrw;->a:Lhrv;

    invoke-static {v0}, Lhrv;->c(Lhrv;)V

    .line 304
    return-void
.end method

.method public a(F)V
    .locals 4

    .prologue
    .line 291
    const-string v0, "%.2f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lhyx;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 292
    iget-object v1, p0, Lhrw;->a:Lhrv;

    invoke-static {v1}, Lhrv;->a(Lhrv;)Lhqy;

    move-result-object v1

    invoke-interface {v1, v0}, Lhqy;->b(Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lhrw;->a:Lhrv;

    invoke-static {v0}, Lhrv;->b(Lhrv;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 298
    iget-object v1, p0, Lhrw;->a:Lhrv;

    invoke-static {v1}, Lhrv;->a(Lhrv;)Lhqy;

    move-result-object v1

    invoke-interface {v1, v0}, Lhqy;->a(I)V

    .line 299
    return-void
.end method
