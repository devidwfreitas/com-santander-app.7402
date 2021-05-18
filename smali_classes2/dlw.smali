.class Ldlw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldlv;


# direct methods
.method constructor <init>(Ldlv;)V
    .locals 0

    iput-object p1, p0, Ldlw;->a:Ldlv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Ldlw;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->c()V

    return-void
.end method
