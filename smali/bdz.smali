.class Lbdz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Layz;


# instance fields
.field final synthetic a:Lazb;

.field final synthetic b:Lbdy;


# direct methods
.method constructor <init>(Lbdy;Lazb;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lbdz;->b:Lbdy;

    iput-object p2, p0, Lbdz;->a:Lazb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 142
    iget-object v1, p0, Lbdz;->b:Lbdy;

    iget-object v0, p0, Lbdz;->a:Lazb;

    invoke-virtual {v0}, Lazb;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lbdy;->a(Lbdy;Z)V

    .line 143
    return-void

    .line 142
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
