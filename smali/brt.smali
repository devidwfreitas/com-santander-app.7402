.class public Lbrt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lbqv;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/facebook/login/DeviceAuthDialog;


# direct methods
.method public constructor <init>(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lbqv;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lbrt;->d:Lcom/facebook/login/DeviceAuthDialog;

    iput-object p2, p0, Lbrt;->a:Ljava/lang/String;

    iput-object p3, p0, Lbrt;->b:Lbqv;

    iput-object p4, p0, Lbrt;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 344
    iget-object v0, p0, Lbrt;->d:Lcom/facebook/login/DeviceAuthDialog;

    iget-object v1, p0, Lbrt;->a:Ljava/lang/String;

    iget-object v2, p0, Lbrt;->b:Lbqv;

    iget-object v3, p0, Lbrt;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/login/DeviceAuthDialog;->a(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lbqv;Ljava/lang/String;)V

    .line 345
    return-void
.end method
