.class Ldcu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldcs;


# direct methods
.method constructor <init>(Ldcs;)V
    .locals 0

    iput-object p1, p0, Ldcu;->a:Ldcs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Ldcu;->a:Ldcs;

    invoke-static {v0}, Ldcs;->b(Ldcs;)V

    return-void
.end method
