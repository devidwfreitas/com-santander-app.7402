.class Ldwa;
.super Ledb;


# instance fields
.field final synthetic a:Ldwt;


# direct methods
.method constructor <init>(Ldvb;Ldwt;)V
    .locals 0

    iput-object p2, p0, Ldwa;->a:Ldwt;

    invoke-direct {p0}, Ledb;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Ldwa;->a:Ldwt;

    invoke-interface {v0}, Ldwt;->a()Z

    move-result v0

    return v0
.end method
