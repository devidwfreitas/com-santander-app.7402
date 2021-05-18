.class final Lbmj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lbmk;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lbmk;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lbmj;->a:Landroid/content/Context;

    iput-object p2, p0, Lbmj;->b:Ljava/lang/String;

    iput-object p3, p0, Lbmj;->c:Lbmk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lbmj;->a:Landroid/content/Context;

    iget-object v1, p0, Lbmj;->b:Ljava/lang/String;

    iget-object v2, p0, Lbmj;->c:Lbmk;

    invoke-static {v0, v1, v2}, Lbmi;->b(Landroid/content/Context;Ljava/lang/String;Lbmk;)V

    .line 150
    return-void
.end method
