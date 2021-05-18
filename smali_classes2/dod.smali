.class Ldod;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/ComponentName;

.field final synthetic b:Ldob;


# direct methods
.method constructor <init>(Ldob;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Ldod;->b:Ldob;

    iput-object p2, p0, Ldod;->a:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ldod;->b:Ldob;

    iget-object v0, v0, Ldob;->a:Ldno;

    iget-object v1, p0, Ldod;->a:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Ldno;->a(Ldno;Landroid/content/ComponentName;)V

    return-void
.end method
