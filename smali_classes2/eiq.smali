.class Leiq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Leio;


# direct methods
.method constructor <init>(Leio;Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Leiq;->c:Leio;

    iput-object p2, p0, Leiq;->a:Landroid/content/Intent;

    iput-object p3, p0, Leiq;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Leiq;->c:Leio;

    iget-object v1, p0, Leiq;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Leio;->b(Landroid/content/Intent;)V

    iget-object v0, p0, Leiq;->c:Leio;

    iget-object v1, p0, Leiq;->b:Landroid/content/Intent;

    invoke-static {v0, v1}, Leio;->a(Leio;Landroid/content/Intent;)V

    return-void
.end method
