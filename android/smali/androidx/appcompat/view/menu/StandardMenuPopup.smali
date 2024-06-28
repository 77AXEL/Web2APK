.class final Landroidx/appcompat/view/menu/StandardMenuPopup;
.super Landroidx/appcompat/view/menu/MenuPopup;
.source "StandardMenuPopup.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroidx/appcompat/view/menu/MenuPresenter;
.implements Landroid/view/View$OnKeyListener;


# static fields
.field private static final ITEM_LAYOUT:I


# instance fields
.field private final mAdapter:Landroidx/appcompat/view/menu/MenuAdapter;

.field private mAnchorView:Landroid/view/View;

.field private final mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field final mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHasContentWidth:Z

.field private final mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOverflowOnly:Z

.field final mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

.field private final mPopupMaxWidth:I

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field private mShowTitle:Z

.field mShownAnchorView:Landroid/view/View;

.field mTreeObserver:Landroid/view/ViewTreeObserver;

.field private mWasDismissed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    sget v0, Landroidx/appcompat/R$layout;->abc_popup_menu_item_layout:I

    sput v0, Landroidx/appcompat/view/menu/StandardMenuPopup;->ITEM_LAYOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;IIZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;
    .param p4, "popupStyleAttr"    # I
    .param p5, "popupStyleRes"    # I
    .param p6, "overflowOnly"    # Z

    .line 116
    invoke-direct {p0}, Landroidx/appcompat/view/menu/MenuPopup;-><init>()V

    .line 59
    new-instance v0, Landroidx/appcompat/view/menu/StandardMenuPopup$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/StandardMenuPopup$1;-><init>(Landroidx/appcompat/view/menu/StandardMenuPopup;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 78
    new-instance v0, Landroidx/appcompat/view/menu/StandardMenuPopup$2;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/StandardMenuPopup$2;-><init>(Landroidx/appcompat/view/menu/StandardMenuPopup;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mDropDownGravity:I

    .line 117
    iput-object p1, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    .line 118
    iput-object p2, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 119
    iput-boolean p6, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mOverflowOnly:Z

    .line 120
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 121
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v1, Landroidx/appcompat/view/menu/MenuAdapter;

    iget-boolean v2, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mOverflowOnly:Z

    sget v3, Landroidx/appcompat/view/menu/StandardMenuPopup;->ITEM_LAYOUT:I

    invoke-direct {v1, p2, v0, v2, v3}, Landroidx/appcompat/view/menu/MenuAdapter;-><init>(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/LayoutInflater;ZI)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAdapter:Landroidx/appcompat/view/menu/MenuAdapter;

    .line 122
    iput p4, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopupStyleAttr:I

    .line 123
    iput p5, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopupStyleRes:I

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 126
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x2

    sget v3, Landroidx/appcompat/R$dimen;->abc_config_prefDialogWidth:I

    .line 127
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 126
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopupMaxWidth:I

    .line 129
    iput-object p3, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    .line 131
    new-instance v2, Landroidx/appcompat/widget/MenuPopupWindow;

    iget-object v3, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    iget v4, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopupStyleAttr:I

    iget v5, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopupStyleRes:I

    const/4 v6, 0x0

    invoke-direct {v2, v3, v6, v4, v5}, Landroidx/appcompat/widget/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v2, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 134
    invoke-virtual {p2, p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 135
    return-void
.end method

.method private tryShow()Z
    .locals 9

    .line 148
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/StandardMenuPopup;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 149
    return v1

    .line 152
    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mWasDismissed:Z

    const/4 v2, 0x0

    if-nez v0, :cond_7

    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 156
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    iput-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    .line 158
    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/MenuPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 159
    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/MenuPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 160
    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/MenuPopupWindow;->setModal(Z)V

    .line 162
    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    .line 163
    .local v0, "anchor":Landroid/view/View;
    iget-object v3, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    .line 164
    .local v3, "addGlobalListener":Z
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iput-object v4, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 165
    if-eqz v3, :cond_3

    .line 166
    iget-object v4, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v5, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 168
    :cond_3
    iget-object v4, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 169
    iget-object v4, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v4, v0}, Landroidx/appcompat/widget/MenuPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 170
    iget-object v4, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    iget v5, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mDropDownGravity:I

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/MenuPopupWindow;->setDropDownGravity(I)V

    .line 172
    iget-boolean v4, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mHasContentWidth:Z

    const/4 v5, 0x0

    if-nez v4, :cond_4

    .line 173
    iget-object v4, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAdapter:Landroidx/appcompat/view/menu/MenuAdapter;

    iget-object v6, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    iget v7, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopupMaxWidth:I

    invoke-static {v4, v5, v6, v7}, Landroidx/appcompat/view/menu/StandardMenuPopup;->measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mContentWidth:I

    .line 174
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mHasContentWidth:Z

    .line 177
    :cond_4
    iget-object v4, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    iget v6, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mContentWidth:I

    invoke-virtual {v4, v6}, Landroidx/appcompat/widget/MenuPopupWindow;->setContentWidth(I)V

    .line 178
    iget-object v4, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroidx/appcompat/widget/MenuPopupWindow;->setInputMethodMode(I)V

    .line 179
    iget-object v4, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/StandardMenuPopup;->getEpicenterBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/appcompat/widget/MenuPopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 180
    iget-object v4, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v4}, Landroidx/appcompat/widget/MenuPopupWindow;->show()V

    .line 182
    iget-object v4, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v4}, Landroidx/appcompat/widget/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 183
    .local v4, "listView":Landroid/widget/ListView;
    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 185
    iget-boolean v6, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mShowTitle:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 186
    iget-object v6, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    .line 187
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Landroidx/appcompat/R$layout;->abc_popup_menu_header_item_layout:I

    invoke-virtual {v6, v7, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 189
    .local v6, "titleItemView":Landroid/widget/FrameLayout;
    const v7, 0x1020016

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 190
    .local v7, "titleView":Landroid/widget/TextView;
    if-eqz v7, :cond_5

    .line 191
    iget-object v8, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    :cond_5
    invoke-virtual {v6, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 194
    invoke-virtual {v4, v6, v5, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 199
    .end local v6    # "titleItemView":Landroid/widget/FrameLayout;
    .end local v7    # "titleView":Landroid/widget/TextView;
    :cond_6
    iget-object v2, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    iget-object v5, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAdapter:Landroidx/appcompat/view/menu/MenuAdapter;

    invoke-virtual {v2, v5}, Landroidx/appcompat/widget/MenuPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 200
    iget-object v2, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v2}, Landroidx/appcompat/widget/MenuPopupWindow;->show()V

    .line 202
    return v1

    .line 153
    .end local v0    # "anchor":Landroid/view/View;
    .end local v3    # "addGlobalListener":Z
    .end local v4    # "listView":Landroid/widget/ListView;
    :cond_7
    :goto_1
    return v2
.end method


# virtual methods
.method public addMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;

    .line 222
    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 214
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/StandardMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/MenuPopupWindow;->dismiss()V

    .line 217
    :cond_0
    return-void
.end method

.method public flagActionItems()Z
    .locals 1

    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 343
    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .line 226
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mWasDismissed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/MenuPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 300
    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eq p1, v0, :cond_0

    return-void

    .line 302
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/StandardMenuPopup;->dismiss()V

    .line 303
    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    .line 306
    :cond_1
    return-void
.end method

.method public onDismiss()V
    .locals 2

    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mWasDismissed:Z

    .line 232
    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->close()V

    .line 234
    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 236
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 239
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 241
    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 244
    :cond_2
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 329
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x52

    if-ne p2, v0, :cond_0

    .line 330
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/StandardMenuPopup;->dismiss()V

    .line 331
    return v1

    .line 333
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 320
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 315
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 9
    .param p1, "subMenu"    # Landroidx/appcompat/view/menu/SubMenuBuilder;

    .line 262
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 263
    new-instance v0, Landroidx/appcompat/view/menu/MenuPopupHelper;

    iget-object v3, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-boolean v6, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mOverflowOnly:Z

    iget v7, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopupStyleAttr:I

    iget v8, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopupStyleRes:I

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Landroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 265
    .local v0, "subPopup":Landroidx/appcompat/view/menu/MenuPopupHelper;
    iget-object v2, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/MenuPopupHelper;->setPresenterCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    .line 266
    invoke-static {p1}, Landroidx/appcompat/view/menu/MenuPopup;->shouldPreserveIconSpacing(Landroidx/appcompat/view/menu/MenuBuilder;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 269
    iget-object v2, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/MenuPopupHelper;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 270
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 273
    iget-object v2, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    .line 276
    iget-object v2, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v2}, Landroidx/appcompat/widget/MenuPopupWindow;->getHorizontalOffset()I

    move-result v2

    .line 277
    .local v2, "horizontalOffset":I
    iget-object v3, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v3}, Landroidx/appcompat/widget/MenuPopupWindow;->getVerticalOffset()I

    move-result v3

    .line 281
    .local v3, "verticalOffset":I
    iget v4, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mDropDownGravity:I

    iget-object v5, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    .line 282
    invoke-virtual {v5}, Landroid/view/View;->getLayoutDirection()I

    move-result v5

    .line 281
    invoke-static {v4, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v4, v4, 0x7

    .line 283
    .local v4, "hgrav":I
    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 284
    iget-object v5, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v2, v5

    .line 287
    :cond_0
    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/view/menu/MenuPopupHelper;->tryShow(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 288
    iget-object v1, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz v1, :cond_1

    .line 289
    iget-object v1, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    invoke-interface {v1, p1}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroidx/appcompat/view/menu/MenuBuilder;)Z

    .line 291
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 294
    .end local v0    # "subPopup":Landroidx/appcompat/view/menu/MenuPopupHelper;
    .end local v2    # "horizontalOffset":I
    .end local v3    # "verticalOffset":I
    .end local v4    # "hgrav":I
    :cond_2
    return v1
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .line 324
    iput-object p1, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    .line 325
    return-void
.end method

.method public setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 257
    iput-object p1, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 258
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 1
    .param p1, "forceShow"    # Z

    .line 139
    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAdapter:Landroidx/appcompat/view/menu/MenuAdapter;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuAdapter;->setForceShowIcon(Z)V

    .line 140
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .line 144
    iput p1, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mDropDownGravity:I

    .line 145
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 1
    .param p1, "x"    # I

    .line 349
    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/MenuPopupWindow;->setHorizontalOffset(I)V

    .line 350
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .line 338
    iput-object p1, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 339
    return-void
.end method

.method public setShowTitle(Z)V
    .locals 0
    .param p1, "showTitle"    # Z

    .line 359
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mShowTitle:Z

    .line 360
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1
    .param p1, "y"    # I

    .line 354
    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/MenuPopupWindow;->setVerticalOffset(I)V

    .line 355
    return-void
.end method

.method public show()V
    .locals 2

    .line 207
    invoke-direct {p0}, Landroidx/appcompat/view/menu/StandardMenuPopup;->tryShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    return-void

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateMenuView(Z)V
    .locals 1
    .param p1, "cleared"    # Z

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mHasContentWidth:Z

    .line 250
    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAdapter:Landroidx/appcompat/view/menu/MenuAdapter;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAdapter:Landroidx/appcompat/view/menu/MenuAdapter;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuAdapter;->notifyDataSetChanged()V

    .line 253
    :cond_0
    return-void
.end method
