.class public Lcqp;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcqp;


# instance fields
.field public final b:Lded;

.field public final c:Landroid/accounts/Account;

.field public final d:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcqq;

    invoke-direct {v0}, Lcqq;-><init>()V

    invoke-virtual {v0}, Lcqq;->a()Lcqp;

    move-result-object v0

    sput-object v0, Lcqp;->a:Lcqp;

    return-void
.end method

.method private constructor <init>(Lded;Landroid/accounts/Account;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcqp;->b:Lded;

    iput-object p2, p0, Lcqp;->c:Landroid/accounts/Account;

    iput-object p3, p0, Lcqp;->d:Landroid/os/Looper;

    return-void
.end method

.method synthetic constructor <init>(Lded;Landroid/accounts/Account;Landroid/os/Looper;Lcqo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcqp;-><init>(Lded;Landroid/accounts/Account;Landroid/os/Looper;)V

    return-void
.end method
