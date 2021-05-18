.class Lnkx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnib;

.field final synthetic b:Lnkv;


# direct methods
.method constructor <init>(Lnkv;Lnib;)V
    .locals 0

    iput-object p1, p0, Lnkx;->b:Lnkv;

    iput-object p2, p0, Lnkx;->a:Lnib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnkx;->b:Lnkv;

    iget-object v1, p0, Lnkx;->a:Lnib;

    invoke-static {v0, v1}, Lnkv;->a(Lnkv;Lnib;)V

    return-void
.end method
