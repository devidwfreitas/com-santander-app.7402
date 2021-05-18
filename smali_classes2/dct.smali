.class Ldct;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldcs;


# direct methods
.method constructor <init>(Ldcs;)V
    .locals 0

    iput-object p1, p0, Ldct;->a:Ldcs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Ldct;->a:Ldcs;

    invoke-static {v0}, Ldcs;->a(Ldcs;)V

    return-void
.end method
