.class Lnkt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lngm;

.field final synthetic b:Lnks;


# direct methods
.method constructor <init>(Lnks;Lngm;)V
    .locals 0

    iput-object p1, p0, Lnkt;->b:Lnks;

    iput-object p2, p0, Lnkt;->a:Lngm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnkt;->b:Lnks;

    iget-object v1, p0, Lnkt;->a:Lngm;

    invoke-static {v0, v1}, Lnks;->a(Lnks;Lngm;)V

    return-void
.end method
