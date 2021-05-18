.class Lcxh;
.super Ljava/lang/Object;

# interfaces
.implements Lcxj;


# instance fields
.field final synthetic a:Lcxb;


# direct methods
.method constructor <init>(Lcxb;)V
    .locals 0

    iput-object p1, p0, Lcxh;->a:Lcxb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public a(Lcxa;)V
    .locals 1

    iget-object v0, p0, Lcxh;->a:Lcxb;

    invoke-static {v0}, Lcxb;->b(Lcxb;)Lcxa;

    move-result-object v0

    invoke-interface {v0}, Lcxa;->a()V

    return-void
.end method
