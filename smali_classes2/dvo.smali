.class Ldvo;
.super Lecv;


# instance fields
.field final synthetic a:Ldwr;


# direct methods
.method constructor <init>(Ldvb;Ldwr;)V
    .locals 0

    iput-object p2, p0, Ldvo;->a:Ldwr;

    invoke-direct {p0}, Lecv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Leey;)Z
    .locals 2

    iget-object v0, p0, Ldvo;->a:Ldwr;

    new-instance v1, Ledv;

    invoke-direct {v1, p1}, Ledv;-><init>(Leey;)V

    invoke-interface {v0, v1}, Ldwr;->a(Ledv;)Z

    move-result v0

    return v0
.end method
