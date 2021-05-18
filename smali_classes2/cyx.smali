.class Lcyx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcyw;


# direct methods
.method constructor <init>(Lcyw;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcyx;->b:Lcyw;

    iput-object p2, p0, Lcyx;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcyx;->b:Lcyw;

    iget-object v1, p0, Lcyx;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcyw;->zza(Lcyw;Landroid/content/Intent;)V

    return-void
.end method
