.class Lbpf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lbph;


# direct methods
.method constructor <init>(Landroid/content/Context;Lbph;)V
    .locals 0

    .prologue
    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    iput-object p1, p0, Lbpf;->a:Landroid/content/Context;

    .line 372
    iput-object p2, p0, Lbpf;->b:Lbph;

    .line 373
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lbpf;->b:Lbph;

    iget-object v1, p0, Lbpf;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lbpc;->a(Lbph;Landroid/content/Context;)V

    .line 378
    return-void
.end method
