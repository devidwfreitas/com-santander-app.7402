.class Lboq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbon;


# direct methods
.method constructor <init>(Lbon;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lboq;->a:Lbon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lboq;->a:Lbon;

    invoke-static {v0}, Lbon;->b(Lbon;)V

    .line 306
    return-void
.end method
