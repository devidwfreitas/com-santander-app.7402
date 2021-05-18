.class final Lcom/datami/smi/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/datami/smi/a;

.field private b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/datami/smi/a;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/datami/smi/b;->a:Lcom/datami/smi/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/datami/smi/b;->b:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/datami/smi/b;->b:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/datami/smi/SmiSdk;->appVisibility(Landroid/content/Context;Z)V

    return-void
.end method
