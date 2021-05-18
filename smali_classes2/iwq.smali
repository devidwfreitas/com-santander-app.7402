.class public Liwq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liwp;


# instance fields
.field private a:Ljav;

.field private b:Landroid/support/v7/app/AppCompatActivity;


# direct methods
.method public constructor <init>(Ljav;Landroid/support/v7/app/AppCompatActivity;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Liwq;->a:Ljav;

    .line 30
    iput-object p2, p0, Liwq;->b:Landroid/support/v7/app/AppCompatActivity;

    .line 31
    return-void
.end method

.method static synthetic a(Liwq;)Ljav;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Liwq;->a:Ljav;

    return-object v0
.end method

.method static synthetic b(Liwq;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Liwq;->b:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Liwq;->a:Ljav;

    new-instance v1, Liwr;

    invoke-direct {v1, p0}, Liwr;-><init>(Liwq;)V

    invoke-interface {v0, v1}, Ljav;->a(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Liwq;->a:Ljav;

    new-instance v1, Liws;

    invoke-direct {v1, p0}, Liws;-><init>(Liwq;)V

    invoke-interface {v0, v1}, Ljav;->b(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method
